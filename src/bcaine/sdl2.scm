(define (SDL_Texture-dimensions tex)
  (let ((format (bytevector 1 2 3 4))
        (access (bytevector 5 6 7 8))
        (w (bytevector 9 10 11 12))
        (h (bytevector 13 14 15 16)))
    (and (zero? (SDL_QueryTexture tex format access w h))
         (list (bytevector->integer w) (bytevector->integer h)))))

(set! SDL_Rect-x (getter-with-setter SDL_Rect-x SDL_Rect-x-set!))
(set! SDL_Rect-y (getter-with-setter SDL_Rect-y SDL_Rect-y-set!))
(set! SDL_Rect-w (getter-with-setter SDL_Rect-w SDL_Rect-w-set!))
(set! SDL_Rect-h (getter-with-setter SDL_Rect-h SDL_Rect-h-set!))

(define (SDL_Rect-position rect)
  (list (SDL_Rect-x rect) (SDL_Rect-y rect)))

(define (SDL_Rect-dimensions rect)
  (list (SDL_Rect-w rect) (SDL_Rect-h rect)))

(define (SDL_Rect-bottom-right rect)
  (map + (SDL_Rect-position rect) (SDL_Rect-dimensions rect)))

(define (in-SDL_Rect? rect pos)
  (and (every <= (SDL_Rect-position rect) pos)
       (every < pos (SDL_Rect-bottom-right rect))
       #t))

(define (SDL_MouseButtonEvent-position rect)
  (list (SDL_MouseButtonEvent-x rect) (SDL_MouseButtonEvent-y rect)))
