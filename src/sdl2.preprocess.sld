(define-unprocessed-library (sdl2)
  (import (chibi) (srfi 17))
  (import (chibi bytevector) (only (scheme small) bytevector))
  (include+export-stub "sdl2")
  (include "sdl2.scm")
  (export
   SDL_Texture-dimensions
   SDL_Rect-position
   SDL_Rect-dimensions
   SDL_Rect-bottom-right
   in-SDL_Rect?
   SDL_MouseButtonEvent-position))
