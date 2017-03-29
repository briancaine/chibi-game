(define-primitive-class <sdl-rect> ()
  predicate: SDL_Rect?
  allocator: (lambda (class) (make-SDL_Rect)))

(define-method (initialize (obj <sdl-rect>) . rest)
  (match rest
    ((x y w h)
     (set! (x-position obj) x)
     (set! (y-position obj) y)
     (set! (width obj) w)
     (set! (height obj) h))
    ('()
     '())))

(define-method (x-position (obj <sdl-rect>)) (SDL_Rect-x obj))
(define-method (y-position (obj <sdl-rect>)) (SDL_Rect-y obj))
(define-method (width (obj <sdl-rect>))      (SDL_Rect-w obj))
(define-method (height (obj <sdl-rect>))     (SDL_Rect-h obj))

(define-method ((setter x-position) (obj <sdl-rect>) val) (SDL_Rect-x-set! obj val))
(define-method ((setter y-position) (obj <sdl-rect>) val) (SDL_Rect-y-set! obj val))
(define-method ((setter width) (obj <sdl-rect>) val)      (SDL_Rect-w-set! obj val))
(define-method ((setter height) (obj <sdl-rect>) val)     (SDL_Rect-h-set! obj val))

(define-method (position (obj <sdl-rect>))
  (map (lambda (func) (func obj))
       (list x-position y-position)))

(define-method ((setter position) (obj <sdl-rect>) (pos #t))
  (for-each (lambda (func val) (func obj val))
            (list SDL_Rect-x-set! SDL_Rect-y-set!)
            pos))

(define-method (dimensions (obj <sdl-rect>))
  (map (lambda (func) (func obj))
       (list width height)))

(define-method ((setter dimensions) (obj <sdl-rect>) (dim #t))
  (for-each (lambda (func val) (set! (func obj) val))
            (list width height)
            dim))

(define-primitive-class <sdl-event> ()
  allocator: (lambda (class) (make-SDL_Event))
  predicate: SDL_Event?)

(define-syntax define-sdl-event-class
  (syntax-rules ()
    ((define-sdl-event-class class-name event-type-tag)
     (define-primitive-class class-name (<sdl-event>)
       allocator: (lambda (class) (make-SDL_Event))
       predicate:
         (lambda (obj)
           (and (SDL_Event? obj)
                (= (SDL_Event-type obj) event-type-tag)))))))

(define-sdl-event-class <sdl-event-quit> SDL_QUIT)
(define-sdl-event-class <sdl-event-app-terminating> SDL_APP_TERMINATING)
(define-sdl-event-class <sdl-event-app-lowmemory> SDL_APP_LOWMEMORY)
(define-sdl-event-class <sdl-event-app-willenterbackground> SDL_APP_WILLENTERBACKGROUND)
(define-sdl-event-class <sdl-event-app-didenterbackground> SDL_APP_DIDENTERBACKGROUND)
(define-sdl-event-class <sdl-event-app-willenterforeground> SDL_APP_WILLENTERFOREGROUND)
(define-sdl-event-class <sdl-event-app-didenterforeground> SDL_APP_DIDENTERFOREGROUND)
(define-sdl-event-class <sdl-event-windowevent> SDL_WINDOWEVENT)
(define-sdl-event-class <sdl-event-syswmevent> SDL_SYSWMEVENT)
(define-sdl-event-class <sdl-event-keydown> SDL_KEYDOWN)
(define-sdl-event-class <sdl-event-keyup> SDL_KEYUP)
(define-sdl-event-class <sdl-event-textediting> SDL_TEXTEDITING)
(define-sdl-event-class <sdl-event-textinput> SDL_TEXTINPUT)
(define-sdl-event-class <sdl-event-keymapchanged> SDL_KEYMAPCHANGED)
(define-sdl-event-class <sdl-event-mousemotion> SDL_MOUSEMOTION)
(define-sdl-event-class <sdl-event-mousebuttondown> SDL_MOUSEBUTTONDOWN)
(define-sdl-event-class <sdl-event-mousebuttonup> SDL_MOUSEBUTTONUP)
(define-sdl-event-class <sdl-event-mousewheel> SDL_MOUSEWHEEL)
(define-sdl-event-class <sdl-event-joyaxismotion> SDL_JOYAXISMOTION)
(define-sdl-event-class <sdl-event-joyballmotion> SDL_JOYBALLMOTION)
(define-sdl-event-class <sdl-event-joyhatmotion> SDL_JOYHATMOTION)
(define-sdl-event-class <sdl-event-joybuttondown> SDL_JOYBUTTONDOWN)
(define-sdl-event-class <sdl-event-joybuttonup> SDL_JOYBUTTONUP)
(define-sdl-event-class <sdl-event-joydeviceadded> SDL_JOYDEVICEADDED)
(define-sdl-event-class <sdl-event-joydeviceremoved> SDL_JOYDEVICEREMOVED)
(define-sdl-event-class <sdl-event-controlleraxismotion> SDL_CONTROLLERAXISMOTION)
(define-sdl-event-class <sdl-event-controllerbuttondown> SDL_CONTROLLERBUTTONDOWN)
(define-sdl-event-class <sdl-event-controllerbuttonup> SDL_CONTROLLERBUTTONUP)
(define-sdl-event-class <sdl-event-controllerdeviceadded> SDL_CONTROLLERDEVICEADDED)
(define-sdl-event-class <sdl-event-controllerdeviceremoved> SDL_CONTROLLERDEVICEREMOVED)
(define-sdl-event-class <sdl-event-controllerdeviceremapped> SDL_CONTROLLERDEVICEREMAPPED)
(define-sdl-event-class <sdl-event-fingerdown> SDL_FINGERDOWN)
(define-sdl-event-class <sdl-event-fingerup> SDL_FINGERUP)
(define-sdl-event-class <sdl-event-fingermotion> SDL_FINGERMOTION)
(define-sdl-event-class <sdl-event-dollargesture> SDL_DOLLARGESTURE)
(define-sdl-event-class <sdl-event-dollarrecord> SDL_DOLLARRECORD)
(define-sdl-event-class <sdl-event-multigesture> SDL_MULTIGESTURE)
(define-sdl-event-class <sdl-event-clipboardupdate> SDL_CLIPBOARDUPDATE)
(define-sdl-event-class <sdl-event-dropfile> SDL_DROPFILE)
; apparently not in my version of sdl2:
;(define-sdl-event-class <sdl-event-droptext> SDL_DROPTEXT)
(define-sdl-event-class <sdl-event-audiodeviceadded> SDL_AUDIODEVICEADDED)
(define-sdl-event-class <sdl-event-audiodeviceremoved> SDL_AUDIODEVICEREMOVED)
(define-sdl-event-class <sdl-event-render-targets-reset> SDL_RENDER_TARGETS_RESET)
(define-sdl-event-class <sdl-event-render-device-reset> SDL_RENDER_DEVICE_RESET)
(define-sdl-event-class <sdl-event-userevent> SDL_USEREVENT)
