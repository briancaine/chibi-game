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
