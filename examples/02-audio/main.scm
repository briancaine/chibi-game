#!/usr/bin/chibi-scheme -r

(import (chibi) (chibi ast) (srfi 2) (srfi 17) (srfi 98))

(define window-dimensions '(640 480))
(define window-title "Example 2: Audio")
(define target-fps 45)

(import (sdl2) (sdl2-image) (sdl2-mixer)
        (bcaine defstruct)
        (srfi 33)
        (only (scheme base) unless when)
        (bcaine misc-util)
        (bcaine format)
        (chibi process))

(define audio-frequency 22050) ; half of CD audio
(define audio-format MIX_DEFAULT_FORMAT)
(define audio-channels 2) ; stereo
(define audio-chunksize (/ 4096 2)) ; solid side, but not too big

(define (cleanup-exit code)
  (Mix_Quit)
  (SDL_Quit)
  (exit code))

(defstruct button
  (source-rect (make-SDL_Rect))
  (dest-rect (make-SDL_Rect))
  texture
  renderer
  value ; toggle button
  toggle-begun
  mix-chunk
  mix-playing-channel
)

(define (make-button-at renderer texture position button-num)
  (let* ((res (make-button 'renderer renderer 'texture texture))
         (source-rect (button-source-rect res))
         (dest-rect (button-dest-rect res)))
    (set! (SDL_Rect-x source-rect) 0)
    (set! (SDL_Rect-y source-rect) (* button-num 135))
    (set! (SDL_Rect-w source-rect) 190)
    (set! (SDL_Rect-h source-rect) 129)

    (set! (SDL_Rect-x dest-rect) (car position))
    (set! (SDL_Rect-y dest-rect) (cadr position))
    (set! (SDL_Rect-w dest-rect) (SDL_Rect-w source-rect))
    (set! (SDL_Rect-h dest-rect) (SDL_Rect-h source-rect))

    (set! (button-mix-chunk res)
      (let ((filename
             (cond
              ((= button-num 0)
               "examples/02-audio/carnival-daniel_simon.ogg")
              ((= button-num 1)
               "examples/02-audio/Pill_Bottle-Mike_Koenig-2124041677.ogg")
              (else (error "Bad button-num" button-num)))))
        (or (Mix_LoadWAV filename)
            (error "Failed to load mix chunk" filename))))

    res))

(define (button-depressed? btn)
  (or (button-toggle-begun btn)
      (button-value btn)))

(define (draw-button! renderer btn)
  (set! (SDL_Rect-x (button-source-rect btn))
    (* 195 (if (button-depressed? btn) 1 0)))
  (unless (zero? (SDL_RenderCopy renderer (button-texture btn)
                                 (button-source-rect btn)
                                 (button-dest-rect btn)))
    (error "Failed to draw button")))

(define (cleanup-button! btn)
  (Mix_FreeChunk (button-mix-chunk btn))
  (set! (button-mix-chunk btn) #f))

(define (texture-loader renderer)
  (lambda (filename)
    (and-let* ((surf (IMG_Load filename))
               (tex (or (SDL_CreateTextureFromSurface renderer surf)
                        (begin
                          (SDL_FreeSurface surf)
                          #f))))
      (SDL_FreeSurface surf)
      tex)))

(define (toggle-button! button)
  (if (button-mix-playing-channel button)
      (begin
        (Mix_HaltChannel (button-mix-playing-channel button))
        (set! (button-mix-playing-channel button) #f)
        (set! (button-value button) #f))
      (begin
        (set! (button-mix-playing-channel button)
          (let ((res (Mix_PlayChannel -1 (button-mix-chunk button) 0)))
            (when (= res -1)
              (error "Failed to play audio chunk"))
            res))
        (set! (button-value button) #t))))

(define (update-button! button)
  (when (and-let* ((channel (button-mix-playing-channel button)))
          (zero? (Mix_Playing channel)))
    (toggle-button! button)))

(define ev (make-SDL_Event))

(define (quit-event? buttons)
  (if (not (zero? (SDL_PollEvent ev)))
      (let ((type (SDL_Event-type ev)))
        (cond
         ((= type SDL_QUIT) #t)
         ((= type SDL_MOUSEBUTTONDOWN)
          (let ((btn (find (lambda (btn)
                             (in-SDL_Rect?
                              (button-dest-rect btn)
                              (SDL_MouseButtonEvent-position
                               (SDL_Event-button ev))))
                           buttons)))
            (for-each
             (lambda (btn)
               (set! (button-toggle-begun btn) #f))
             buttons)
            (when btn
              (set! (button-toggle-begun btn) #t))
            (quit-event? buttons)))
         ((= type SDL_MOUSEBUTTONUP)
          (let ((btn (find (lambda (btn)
                             (and (button-toggle-begun btn)
                                  (in-SDL_Rect?
                                   (button-dest-rect btn)
                                   (SDL_MouseButtonEvent-position
                                    (SDL_Event-button ev)))))
                           buttons)))
            (for-each
             (lambda (btn)
               (set! (button-toggle-begun btn) #f))
             buttons)
            (when btn
              (toggle-button! btn))
            (quit-event? buttons)))
         (else (quit-event? buttons))))
      #f))

(define (make-timer fps)
  (let* ((spf       (exact->inexact (/ fps)))
         (msfp      (* spf 1000))
         (last-time (SDL_GetTicks)))
    (lambda ()
      (unless last-time
        (set! last-time (SDL_GetTicks)))
      (let* ((now  (SDL_GetTicks))
             (diff (- now last-time))
             (overshot (- msfp diff)))
        (if (negative? overshot)
            (printf "Frame took too long by ~s ms.\n" (- overshot))
            (when (positive? overshot)
              (SDL_Delay (inexact->exact (floor overshot)))))
        (set! last-time (SDL_GetTicks))))))

(define (protect-errors func)
  (handle-exceptions
      exn
      (begin
        (printf "Error: ~s ~s\n" (exception-message exn) (exception-irritants exn))
        (cleanup-exit 1))
    (begin
      (func)
      (cleanup-exit 0))))


(define (main args)
  (protect-errors
   (lambda ()

     (unless (zero? (SDL_Init SDL_INIT_EVERYTHING))
       (error "Failed to initialize SDL"))

     (let ((initted (Mix_Init (bitwise-ior
                               MIX_INIT_FLAC
                               MIX_INIT_OGG
                               MIX_INIT_MP3))))
       (unless (bitwise-and initted MIX_INIT_OGG)
         (error "Failed to initialize SDL_mixer with OGG support")))

     ; see: https://stackoverflow.com/questions/26779307/sdl2-mixer-no-soundfonts-have-been-requested
     (Mix_SetSoundFonts "")

     (let* ((window (or (SDL_CreateWindow
                         window-title
                         SDL_WINDOWPOS_CENTERED SDL_WINDOWPOS_CENTERED
                         (car window-dimensions) (cadr window-dimensions)
                         0)
                        (error "Failed to create window")))
            (renderer (or (SDL_CreateRenderer window -1 0)
                          (error "Failed to create renderer")))
            (background-texture
             (or ((texture-loader renderer) "examples/02-audio/buttons_background.png")
                 (error "Failed to load background texture")))
            (button-texture
             (or ((texture-loader renderer) "examples/02-audio/buttons.png")
                 (error "Failed to load button texture")))

            (_ (or (zero? (Mix_OpenAudio audio-frequency audio-format
                                         audio-channels
                                         audio-chunksize))
                   (error "Failed to open audio device")))

            (buttons (list
                      (make-button-at renderer button-texture '(100 200) 0)
                      (make-button-at renderer button-texture '(350 200) 1)))

            (timer (make-timer target-fps))
            (time-start (SDL_GetTicks)))

       (define (cleanup-resources)
         (for-each cleanup-button! buttons)
         (Mix_CloseAudio)
         (SDL_DestroyTexture background-texture)
         (SDL_DestroyTexture button-texture)
         (SDL_DestroyRenderer renderer)
         (SDL_DestroyWindow window))

       (define (update-screen)
         (unless (zero? (SDL_RenderCopy renderer background-texture #f #f))
           (error "Failed to draw background"))
         (for-each (lambda (btn) (draw-button! renderer btn)) buttons))

       (let iter ()
         (unless (quit-event? buttons)
           (for-each update-button! buttons)
           (update-screen)
           (SDL_RenderPresent renderer)
           (timer)
           (iter)))

       (cleanup-resources)
       (cleanup-exit 0)))))
