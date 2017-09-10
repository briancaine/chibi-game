#!/usr/bin/chibi-scheme -r

(import (chibi) (srfi 2) (srfi 98))

(define window-dimensions '(640 480))
(define window-title "Example 1: Hello World")
(define target-fps 45)

 ;; the period by which hello-1 and hello-2 are scaled
(define scaling-cycle-ms 2000)

(import (sdl2) (sdl2-image)
        (srfi 33)
        (only (scheme base) unless when)
        (bcaine misc-util)
        (bcaine format)
        (chibi process))

(define (cleanup-exit code)
  (SDL_Quit)
  (exit code))

(define ev (make-SDL_Event))

(define (quit-event?)
  (if (not (zero? (SDL_PollEvent ev)))
      (if (= (SDL_Event-type ev) SDL_QUIT)
          #t
          (quit-event?))
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
        (printf "Error: ~s\n" exn)
        (cleanup-exit 1))
    (begin
      (func)
      (cleanup-exit 0))))

(define (main args)
  (protect-errors
   (lambda ()

     (unless (zero? (SDL_Init SDL_INIT_EVERYTHING))
       (error "Failed to initialize SDL"))

     (let* ((window (or (SDL_CreateWindow
                         window-title
                         SDL_WINDOWPOS_CENTERED SDL_WINDOWPOS_CENTERED
                         (car window-dimensions) (cadr window-dimensions)
                         0)
                        (error "Failed to create window")))
            (renderer (or (SDL_CreateRenderer window -1 0)
                          (error "Failed to create renderer")))

            (load-texture
             (lambda (filename)
               (and-let* ((surf (IMG_Load filename))
                          (tex (or (SDL_CreateTextureFromSurface renderer surf)
                                   (begin
                                     (SDL_FreeSurface surf)
                                     #f))))
                 (SDL_FreeSurface surf)
                 tex)))

            (hello-1 (or (load-texture "examples/01-hello-world/hello1.png")
                         (error "Failed to load hello1.png")))
            (hello-2 (or (load-texture "examples/01-hello-world/hello2.png")
                         (error "Failed to load hello2.png")))

            (timer (make-timer target-fps))
            (time-start (SDL_GetTicks)))

       (define (cleanup-resources)
         (SDL_DestroyTexture hello-1)
         (SDL_DestroyTexture hello-2)
         (SDL_DestroyRenderer renderer)
         (SDL_DestroyWindow window))

       ;; so 0 is hello-1, 1 is hello-2
       (define (hello-1-2-scaling-factor)
         (let* ((now (SDL_GetTicks))
                (cycle-ms (modulo (- now time-start) scaling-cycle-ms))
                (cycle-scaled (* 2.0 (/ cycle-ms scaling-cycle-ms 1.0)))
                (scaling-factor
                 (if (>= cycle-scaled 1.0)
                     (- 1.0 (- cycle-scaled 1.0))
                     cycle-scaled)))
           scaling-factor))

       (define (update-screen)
         (or (and (zero?
                   (SDL_SetTextureAlphaMod
                    hello-2
                    (inexact->exact
                     (floor (* (hello-1-2-scaling-factor) 255)))))
                  (zero? (SDL_RenderCopy renderer hello-1 #f #f))
                  (zero? (SDL_RenderCopy renderer hello-2 #f #f)))
             (error "Failed to update screen")))

       (let iter ()
         (unless (quit-event?)
           (update-screen)
           (SDL_RenderPresent renderer)
           (timer)
           (iter)))

       (cleanup-resources)
       (cleanup-exit 0)))))
