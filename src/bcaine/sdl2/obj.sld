(define-library (bcaine sdl2 obj)
  (import (chibi) (srfi 17) (chibi match))
  (import (bcaine sdl2) (bcaine obj))
  (include "obj.scm")
  (export <sdl-rect>
          position dimensions
          x-position y-position width height
))
