(define-library (sdl2 obj)
  (import (chibi) (srfi 17) (chibi match))
  (import (sdl2) (bcaine obj))
  (include "obj.scm")
  (export <sdl-rect>
          position dimensions
          x-position y-position width height
          <sdl-event-quit> <sdl-event-app-terminating>
          <sdl-event-app-lowmemory>
          <sdl-event-app-willenterbackground>
          <sdl-event-app-didenterbackground>
          <sdl-event-app-willenterforeground>
          <sdl-event-app-didenterforeground>
          <sdl-event-windowevent>
          <sdl-event-syswmevent>
          <sdl-event-keydown>
          <sdl-event-keyup>
          <sdl-event-textediting>
          <sdl-event-textinput>
          <sdl-event-keymapchanged>
          <sdl-event-mousemotion>
          <sdl-event-mousebuttondown>
          <sdl-event-mousebuttonup>
          <sdl-event-mousewheel>
          <sdl-event-joyaxismotion>
          <sdl-event-joyballmotion>
          <sdl-event-joyhatmotion>
          <sdl-event-joybuttondown>
          <sdl-event-joybuttonup>
          <sdl-event-joydeviceadded>
          <sdl-event-joydeviceremoved>
          <sdl-event-controlleraxismotion>
          <sdl-event-controllerbuttondown>
          <sdl-event-controllerbuttonup>
          <sdl-event-controllerdeviceadded>
          <sdl-event-controllerdeviceremoved>
          <sdl-event-controllerdeviceremapped>
          <sdl-event-fingerdown>
          <sdl-event-fingerup>
          <sdl-event-fingermotion>
          <sdl-event-dollargesture>
          <sdl-event-dollarrecord>
          <sdl-event-multigesture>
          <sdl-event-clipboardupdate>
          <sdl-event-dropfile>
          <sdl-event-audiodeviceadded>
          <sdl-event-audiodeviceremoved>
          <sdl-event-render-targets-reset>
          <sdl-event-render-device-reset>
          <sdl-event-userevent>
))
