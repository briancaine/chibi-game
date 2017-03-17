(define-library (bcaine sdl2)
  (import (chibi))
  (include-shared "sdl2")
  (export SDL_ADDEVENT
  SDL_ALPHA_OPAQUE
  SDL_ALPHA_TRANSPARENT
  SDL_APP_DIDENTERBACKGROUND
  SDL_APP_DIDENTERFOREGROUND
  SDL_APP_LOWMEMORY
  SDL_APP_TERMINATING
  SDL_APP_WILLENTERBACKGROUND
  SDL_APP_WILLENTERFOREGROUND
  SDL_ARRAYORDER_ABGR
  SDL_ARRAYORDER_ARGB
  SDL_ARRAYORDER_BGR
  SDL_ARRAYORDER_BGRA
  SDL_ARRAYORDER_NONE
  SDL_ARRAYORDER_RGB
  SDL_ARRAYORDER_RGBA
  SDL_ASSEMBLY_ROUTINES
  SDL_ASSERTION_ABORT
  SDL_ASSERTION_ALWAYS_IGNORE
  SDL_ASSERTION_BREAK
  SDL_ASSERTION_IGNORE
  SDL_ASSERTION_RETRY
  SDL_ASSERT_LEVEL
  SDL_AUDIO_ALLOW_ANY_CHANGE
  SDL_AUDIO_ALLOW_CHANNELS_CHANGE
  SDL_AUDIO_ALLOW_FORMAT_CHANGE
  SDL_AUDIO_ALLOW_FREQUENCY_CHANGE
  SDL_AUDIO_DRIVER_ALSA
  SDL_AUDIO_DRIVER_DISK
  SDL_AUDIO_DRIVER_DUMMY
  SDL_AUDIO_DRIVER_OSS
  SDL_AUDIO_DRIVER_PULSEAUDIO
  SDL_AUDIO_MASK_BITSIZE
  SDL_AUDIO_MASK_DATATYPE
  SDL_AUDIO_MASK_ENDIAN
  SDL_AUDIO_MASK_SIGNED
  SDL_AUDIO_PAUSED
  SDL_AUDIO_PLAYING
  SDL_AUDIO_STOPPED
  SDL_BIG_ENDIAN
  SDL_BITMAPORDER_1234
  SDL_BITMAPORDER_4321
  SDL_BITMAPORDER_NONE
  SDL_BLENDMODE_ADD
  SDL_BLENDMODE_BLEND
  SDL_BLENDMODE_MOD
  SDL_BLENDMODE_NONE
  SDL_BUTTON_LEFT
  SDL_BUTTON_MIDDLE
  SDL_BUTTON_RIGHT
  SDL_BUTTON_X1
  SDL_BUTTON_X2
  SDL_BYTEORDER
  SDL_CACHELINE_SIZE
  SDL_CLIPBOARDUPDATE
  SDL_CONTROLLERAXISMOTION
  SDL_CONTROLLERBUTTONDOWN
  SDL_CONTROLLERBUTTONUP
  SDL_CONTROLLERDEVICEADDED
  SDL_CONTROLLERDEVICEREMAPPED
  SDL_CONTROLLERDEVICEREMOVED
  SDL_CONTROLLER_AXIS_INVALID
  SDL_CONTROLLER_AXIS_LEFTX
  SDL_CONTROLLER_AXIS_LEFTY
  SDL_CONTROLLER_AXIS_MAX
  SDL_CONTROLLER_AXIS_RIGHTX
  SDL_CONTROLLER_AXIS_RIGHTY
  SDL_CONTROLLER_AXIS_TRIGGERLEFT
  SDL_CONTROLLER_AXIS_TRIGGERRIGHT
  SDL_CONTROLLER_BINDTYPE_AXIS
  SDL_CONTROLLER_BINDTYPE_BUTTON
  SDL_CONTROLLER_BINDTYPE_HAT
  SDL_CONTROLLER_BINDTYPE_NONE
  SDL_CONTROLLER_BUTTON_A
  SDL_CONTROLLER_BUTTON_B
  SDL_CONTROLLER_BUTTON_BACK
  SDL_CONTROLLER_BUTTON_DPAD_DOWN
  SDL_CONTROLLER_BUTTON_DPAD_LEFT
  SDL_CONTROLLER_BUTTON_DPAD_RIGHT
  SDL_CONTROLLER_BUTTON_DPAD_UP
  SDL_CONTROLLER_BUTTON_GUIDE
  SDL_CONTROLLER_BUTTON_INVALID
  SDL_CONTROLLER_BUTTON_LEFTSHOULDER
  SDL_CONTROLLER_BUTTON_LEFTSTICK
  SDL_CONTROLLER_BUTTON_MAX
  SDL_CONTROLLER_BUTTON_RIGHTSHOULDER
  SDL_CONTROLLER_BUTTON_RIGHTSTICK
  SDL_CONTROLLER_BUTTON_START
  SDL_CONTROLLER_BUTTON_X
  SDL_CONTROLLER_BUTTON_Y
  SDL_DISABLE
  SDL_DOLLARGESTURE
  SDL_DOLLARRECORD
  SDL_DONTFREE
  SDL_DROPFILE
  SDL_EFREAD
  SDL_EFSEEK
  SDL_EFWRITE
  SDL_ENABLE
  SDL_ENOMEM
  SDL_FALSE
  SDL_FINGERDOWN
  SDL_FINGERMOTION
  SDL_FINGERUP
  SDL_FIRSTEVENT
  SDL_FLIP_HORIZONTAL
  SDL_FLIP_NONE
  SDL_FLIP_VERTICAL
  SDL_GETEVENT
  SDL_GL_ACCELERATED_VISUAL
  SDL_GL_ACCUM_ALPHA_SIZE
  SDL_GL_ACCUM_BLUE_SIZE
  SDL_GL_ACCUM_GREEN_SIZE
  SDL_GL_ACCUM_RED_SIZE
  SDL_GL_ALPHA_SIZE
  SDL_GL_BLUE_SIZE
  SDL_GL_BUFFER_SIZE
  SDL_GL_CONTEXT_DEBUG_FLAG
  SDL_GL_CONTEXT_EGL
  SDL_GL_CONTEXT_FLAGS
  SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG
  SDL_GL_CONTEXT_MAJOR_VERSION
  SDL_GL_CONTEXT_MINOR_VERSION
  SDL_GL_CONTEXT_PROFILE_COMPATIBILITY
  SDL_GL_CONTEXT_PROFILE_CORE
  SDL_GL_CONTEXT_PROFILE_ES
  SDL_GL_CONTEXT_PROFILE_MASK
  SDL_GL_CONTEXT_RESET_ISOLATION_FLAG
  SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG
  SDL_GL_DEPTH_SIZE
  SDL_GL_DOUBLEBUFFER
  SDL_GL_GREEN_SIZE
  SDL_GL_MULTISAMPLEBUFFERS
  SDL_GL_MULTISAMPLESAMPLES
  SDL_GL_RED_SIZE
  SDL_GL_RETAINED_BACKING
  SDL_GL_SHARE_WITH_CURRENT_CONTEXT
  SDL_GL_STENCIL_SIZE
  SDL_GL_STEREO
  SDL_HAPTIC_AUTOCENTER
  SDL_HAPTIC_CARTESIAN
  SDL_HAPTIC_CONSTANT
  SDL_HAPTIC_CUSTOM
  SDL_HAPTIC_DAMPER
  SDL_HAPTIC_FRICTION
  SDL_HAPTIC_GAIN
  SDL_HAPTIC_INERTIA
  SDL_HAPTIC_INFINITY
  SDL_HAPTIC_LEFTRIGHT
  SDL_HAPTIC_LINUX
  SDL_HAPTIC_PAUSE
  SDL_HAPTIC_POLAR
  SDL_HAPTIC_RAMP
  SDL_HAPTIC_SAWTOOTHDOWN
  SDL_HAPTIC_SAWTOOTHUP
  SDL_HAPTIC_SINE
  SDL_HAPTIC_SPHERICAL
  SDL_HAPTIC_SPRING
  SDL_HAPTIC_STATUS
  SDL_HAPTIC_TRIANGLE
  SDL_HAT_CENTERED
  SDL_HAT_DOWN
  SDL_HAT_LEFT
  SDL_HAT_LEFTDOWN
  SDL_HAT_LEFTUP
  SDL_HAT_RIGHT
  SDL_HAT_RIGHTDOWN
  SDL_HAT_RIGHTUP
  SDL_HAT_UP
  SDL_HINT_ALLOW_TOPMOST
  SDL_HINT_DEFAULT
  SDL_HINT_FRAMEBUFFER_ACCELERATION
  SDL_HINT_GAMECONTROLLERCONFIG
  SDL_HINT_GRAB_KEYBOARD
  SDL_HINT_IDLE_TIMER_DISABLED
  SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS
  SDL_HINT_NORMAL
  SDL_HINT_ORIENTATIONS
  SDL_HINT_OVERRIDE
  SDL_HINT_RENDER_DRIVER
  SDL_HINT_RENDER_OPENGL_SHADERS
  SDL_HINT_RENDER_SCALE_QUALITY
  SDL_HINT_RENDER_VSYNC
  SDL_HINT_TIMER_RESOLUTION
  SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS
  SDL_HINT_VIDEO_X11_XINERAMA
  SDL_HINT_VIDEO_X11_XRANDR
  SDL_HINT_VIDEO_X11_XVIDMODE
  SDL_HINT_XINPUT_ENABLED
  SDL_ICONV_E2BIG
  SDL_ICONV_EILSEQ
  SDL_ICONV_EINVAL
  SDL_ICONV_ERROR
  SDL_IGNORE
  SDL_INIT_AUDIO
  SDL_INIT_EVENTS
  SDL_INIT_EVERYTHING
  SDL_INIT_GAMECONTROLLER
  SDL_INIT_HAPTIC
  SDL_INIT_JOYSTICK
  SDL_INIT_NOPARACHUTE
  SDL_INIT_TIMER
  SDL_INIT_VIDEO
  SDL_INPUT_LINUXEV
  SDL_JOYAXISMOTION
  SDL_JOYBALLMOTION
  SDL_JOYBUTTONDOWN
  SDL_JOYBUTTONUP
  SDL_JOYDEVICEADDED
  SDL_JOYDEVICEREMOVED
  SDL_JOYHATMOTION
  SDL_JOYSTICK_LINUX
  SDL_KEYDOWN
  SDL_KEYUP
  SDL_LASTERROR
  SDL_LASTEVENT
  SDL_LIL_ENDIAN
  SDL_LOADSO_DLOPEN
  SDL_LOG_CATEGORY_APPLICATION
  SDL_LOG_CATEGORY_ASSERT
  SDL_LOG_CATEGORY_AUDIO
  SDL_LOG_CATEGORY_CUSTOM
  SDL_LOG_CATEGORY_ERROR
  SDL_LOG_CATEGORY_INPUT
  SDL_LOG_CATEGORY_RENDER
  SDL_LOG_CATEGORY_RESERVED1
  SDL_LOG_CATEGORY_RESERVED10
  SDL_LOG_CATEGORY_RESERVED2
  SDL_LOG_CATEGORY_RESERVED3
  SDL_LOG_CATEGORY_RESERVED4
  SDL_LOG_CATEGORY_RESERVED5
  SDL_LOG_CATEGORY_RESERVED6
  SDL_LOG_CATEGORY_RESERVED7
  SDL_LOG_CATEGORY_RESERVED8
  SDL_LOG_CATEGORY_RESERVED9
  SDL_LOG_CATEGORY_SYSTEM
  SDL_LOG_CATEGORY_TEST
  SDL_LOG_CATEGORY_VIDEO
  SDL_LOG_PRIORITY_CRITICAL
  SDL_LOG_PRIORITY_DEBUG
  SDL_LOG_PRIORITY_ERROR
  SDL_LOG_PRIORITY_INFO
  SDL_LOG_PRIORITY_VERBOSE
  SDL_LOG_PRIORITY_WARN
  SDL_MAJOR_VERSION
  SDL_MAX_LOG_MESSAGE
  SDL_MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT
  SDL_MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT
  SDL_MESSAGEBOX_COLOR_BACKGROUND
  SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND
  SDL_MESSAGEBOX_COLOR_BUTTON_BORDER
  SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED
  SDL_MESSAGEBOX_COLOR_MAX
  SDL_MESSAGEBOX_COLOR_TEXT
  SDL_MESSAGEBOX_ERROR
  SDL_MESSAGEBOX_INFORMATION
  SDL_MESSAGEBOX_WARNING
  SDL_MINOR_VERSION
  SDL_MIX_MAXVOLUME
  SDL_MOUSEBUTTONDOWN
  SDL_MOUSEBUTTONUP
  SDL_MOUSEMOTION
  SDL_MOUSEWHEEL
  SDL_MULTIGESTURE
  SDL_MUTEX_TIMEDOUT
  SDL_NUM_LOG_PRIORITIES
  SDL_NUM_SCANCODES
  SDL_NUM_SYSTEM_CURSORS
  SDL_PACKEDLAYOUT_1010102
  SDL_PACKEDLAYOUT_1555
  SDL_PACKEDLAYOUT_2101010
  SDL_PACKEDLAYOUT_332
  SDL_PACKEDLAYOUT_4444
  SDL_PACKEDLAYOUT_5551
  SDL_PACKEDLAYOUT_565
  SDL_PACKEDLAYOUT_8888
  SDL_PACKEDLAYOUT_NONE
  SDL_PACKEDORDER_ABGR
  SDL_PACKEDORDER_ARGB
  SDL_PACKEDORDER_BGRA
  SDL_PACKEDORDER_BGRX
  SDL_PACKEDORDER_NONE
  SDL_PACKEDORDER_RGBA
  SDL_PACKEDORDER_RGBX
  SDL_PACKEDORDER_XBGR
  SDL_PACKEDORDER_XRGB
  SDL_PATCHLEVEL
  SDL_PEEKEVENT
  SDL_PIXELFORMAT_ABGR1555
  SDL_PIXELFORMAT_ABGR4444
  SDL_PIXELFORMAT_ABGR8888
  SDL_PIXELFORMAT_ARGB1555
  SDL_PIXELFORMAT_ARGB2101010
  SDL_PIXELFORMAT_ARGB4444
  SDL_PIXELFORMAT_ARGB8888
  SDL_PIXELFORMAT_BGR24
  SDL_PIXELFORMAT_BGR555
  SDL_PIXELFORMAT_BGR565
  SDL_PIXELFORMAT_BGR888
  SDL_PIXELFORMAT_BGRA4444
  SDL_PIXELFORMAT_BGRA5551
  SDL_PIXELFORMAT_BGRA8888
  SDL_PIXELFORMAT_BGRX8888
  SDL_PIXELFORMAT_INDEX1LSB
  SDL_PIXELFORMAT_INDEX1MSB
  SDL_PIXELFORMAT_INDEX4LSB
  SDL_PIXELFORMAT_INDEX4MSB
  SDL_PIXELFORMAT_INDEX8
  SDL_PIXELFORMAT_IYUV
  SDL_PIXELFORMAT_RGB24
  SDL_PIXELFORMAT_RGB332
  SDL_PIXELFORMAT_RGB444
  SDL_PIXELFORMAT_RGB555
  SDL_PIXELFORMAT_RGB565
  SDL_PIXELFORMAT_RGB888
  SDL_PIXELFORMAT_RGBA4444
  SDL_PIXELFORMAT_RGBA5551
  SDL_PIXELFORMAT_RGBA8888
  SDL_PIXELFORMAT_RGBX8888
  SDL_PIXELFORMAT_UNKNOWN
  SDL_PIXELFORMAT_UYVY
  SDL_PIXELFORMAT_YUY2
  SDL_PIXELFORMAT_YV12
  SDL_PIXELFORMAT_YVYU
  SDL_PIXELTYPE_ARRAYF16
  SDL_PIXELTYPE_ARRAYF32
  SDL_PIXELTYPE_ARRAYU16
  SDL_PIXELTYPE_ARRAYU32
  SDL_PIXELTYPE_ARRAYU8
  SDL_PIXELTYPE_INDEX1
  SDL_PIXELTYPE_INDEX4
  SDL_PIXELTYPE_INDEX8
  SDL_PIXELTYPE_PACKED16
  SDL_PIXELTYPE_PACKED32
  SDL_PIXELTYPE_PACKED8
  SDL_PIXELTYPE_UNKNOWN
  SDL_POWERSTATE_CHARGED
  SDL_POWERSTATE_CHARGING
  SDL_POWERSTATE_NO_BATTERY
  SDL_POWERSTATE_ON_BATTERY
  SDL_POWERSTATE_UNKNOWN
  SDL_POWER_LINUX
  SDL_PREALLOC
  SDL_PRESSED
  SDL_QUERY
  SDL_QUIT
  SDL_RELEASED
  SDL_RENDERER_ACCELERATED
  SDL_RENDERER_PRESENTVSYNC
  SDL_RENDERER_SOFTWARE
  SDL_RENDERER_TARGETTEXTURE
  SDL_RLEACCEL
  SDL_RWOPS_JNIFILE
  SDL_RWOPS_MEMORY
  SDL_RWOPS_MEMORY_RO
  SDL_RWOPS_STDFILE
  SDL_RWOPS_UNKNOWN
  SDL_RWOPS_WINFILE
  SDL_SCANCODE_0
  SDL_SCANCODE_1
  SDL_SCANCODE_2
  SDL_SCANCODE_3
  SDL_SCANCODE_4
  SDL_SCANCODE_5
  SDL_SCANCODE_6
  SDL_SCANCODE_7
  SDL_SCANCODE_8
  SDL_SCANCODE_9
  SDL_SCANCODE_A
  SDL_SCANCODE_AC_BACK
  SDL_SCANCODE_AC_BOOKMARKS
  SDL_SCANCODE_AC_FORWARD
  SDL_SCANCODE_AC_HOME
  SDL_SCANCODE_AC_REFRESH
  SDL_SCANCODE_AC_SEARCH
  SDL_SCANCODE_AC_STOP
  SDL_SCANCODE_AGAIN
  SDL_SCANCODE_ALTERASE
  SDL_SCANCODE_APOSTROPHE
  SDL_SCANCODE_APP1
  SDL_SCANCODE_APP2
  SDL_SCANCODE_APPLICATION
  SDL_SCANCODE_AUDIOMUTE
  SDL_SCANCODE_AUDIONEXT
  SDL_SCANCODE_AUDIOPLAY
  SDL_SCANCODE_AUDIOPREV
  SDL_SCANCODE_AUDIOSTOP
  SDL_SCANCODE_B
  SDL_SCANCODE_BACKSLASH
  SDL_SCANCODE_BACKSPACE
  SDL_SCANCODE_BRIGHTNESSDOWN
  SDL_SCANCODE_BRIGHTNESSUP
  SDL_SCANCODE_C
  SDL_SCANCODE_CALCULATOR
  SDL_SCANCODE_CANCEL
  SDL_SCANCODE_CAPSLOCK
  SDL_SCANCODE_CLEAR
  SDL_SCANCODE_CLEARAGAIN
  SDL_SCANCODE_COMMA
  SDL_SCANCODE_COMPUTER
  SDL_SCANCODE_COPY
  SDL_SCANCODE_CRSEL
  SDL_SCANCODE_CURRENCYSUBUNIT
  SDL_SCANCODE_CURRENCYUNIT
  SDL_SCANCODE_CUT
  SDL_SCANCODE_D
  SDL_SCANCODE_DECIMALSEPARATOR
  SDL_SCANCODE_DELETE
  SDL_SCANCODE_DISPLAYSWITCH
  SDL_SCANCODE_DOWN
  SDL_SCANCODE_E
  SDL_SCANCODE_EJECT
  SDL_SCANCODE_END
  SDL_SCANCODE_EQUALS
  SDL_SCANCODE_ESCAPE
  SDL_SCANCODE_EXECUTE
  SDL_SCANCODE_EXSEL
  SDL_SCANCODE_F
  SDL_SCANCODE_F1
  SDL_SCANCODE_F10
  SDL_SCANCODE_F11
  SDL_SCANCODE_F12
  SDL_SCANCODE_F13
  SDL_SCANCODE_F14
  SDL_SCANCODE_F15
  SDL_SCANCODE_F16
  SDL_SCANCODE_F17
  SDL_SCANCODE_F18
  SDL_SCANCODE_F19
  SDL_SCANCODE_F2
  SDL_SCANCODE_F20
  SDL_SCANCODE_F21
  SDL_SCANCODE_F22
  SDL_SCANCODE_F23
  SDL_SCANCODE_F24
  SDL_SCANCODE_F3
  SDL_SCANCODE_F4
  SDL_SCANCODE_F5
  SDL_SCANCODE_F6
  SDL_SCANCODE_F7
  SDL_SCANCODE_F8
  SDL_SCANCODE_F9
  SDL_SCANCODE_FIND
  SDL_SCANCODE_G
  SDL_SCANCODE_GRAVE
  SDL_SCANCODE_H
  SDL_SCANCODE_HELP
  SDL_SCANCODE_HOME
  SDL_SCANCODE_I
  SDL_SCANCODE_INSERT
  SDL_SCANCODE_INTERNATIONAL1
  SDL_SCANCODE_INTERNATIONAL2
  SDL_SCANCODE_INTERNATIONAL3
  SDL_SCANCODE_INTERNATIONAL4
  SDL_SCANCODE_INTERNATIONAL5
  SDL_SCANCODE_INTERNATIONAL6
  SDL_SCANCODE_INTERNATIONAL7
  SDL_SCANCODE_INTERNATIONAL8
  SDL_SCANCODE_INTERNATIONAL9
  SDL_SCANCODE_J
  SDL_SCANCODE_K
  SDL_SCANCODE_KBDILLUMDOWN
  SDL_SCANCODE_KBDILLUMTOGGLE
  SDL_SCANCODE_KBDILLUMUP
  SDL_SCANCODE_KP_0
  SDL_SCANCODE_KP_00
  SDL_SCANCODE_KP_000
  SDL_SCANCODE_KP_1
  SDL_SCANCODE_KP_2
  SDL_SCANCODE_KP_3
  SDL_SCANCODE_KP_4
  SDL_SCANCODE_KP_5
  SDL_SCANCODE_KP_6
  SDL_SCANCODE_KP_7
  SDL_SCANCODE_KP_8
  SDL_SCANCODE_KP_9
  SDL_SCANCODE_KP_A
  SDL_SCANCODE_KP_AMPERSAND
  SDL_SCANCODE_KP_AT
  SDL_SCANCODE_KP_B
  SDL_SCANCODE_KP_BACKSPACE
  SDL_SCANCODE_KP_BINARY
  SDL_SCANCODE_KP_C
  SDL_SCANCODE_KP_CLEAR
  SDL_SCANCODE_KP_CLEARENTRY
  SDL_SCANCODE_KP_COLON
  SDL_SCANCODE_KP_COMMA
  SDL_SCANCODE_KP_D
  SDL_SCANCODE_KP_DBLAMPERSAND
  SDL_SCANCODE_KP_DBLVERTICALBAR
  SDL_SCANCODE_KP_DECIMAL
  SDL_SCANCODE_KP_DIVIDE
  SDL_SCANCODE_KP_E
  SDL_SCANCODE_KP_ENTER
  SDL_SCANCODE_KP_EQUALS
  SDL_SCANCODE_KP_EQUALSAS400
  SDL_SCANCODE_KP_EXCLAM
  SDL_SCANCODE_KP_F
  SDL_SCANCODE_KP_GREATER
  SDL_SCANCODE_KP_HASH
  SDL_SCANCODE_KP_HEXADECIMAL
  SDL_SCANCODE_KP_LEFTBRACE
  SDL_SCANCODE_KP_LEFTPAREN
  SDL_SCANCODE_KP_LESS
  SDL_SCANCODE_KP_MEMADD
  SDL_SCANCODE_KP_MEMCLEAR
  SDL_SCANCODE_KP_MEMDIVIDE
  SDL_SCANCODE_KP_MEMMULTIPLY
  SDL_SCANCODE_KP_MEMRECALL
  SDL_SCANCODE_KP_MEMSTORE
  SDL_SCANCODE_KP_MEMSUBTRACT
  SDL_SCANCODE_KP_MINUS
  SDL_SCANCODE_KP_MULTIPLY
  SDL_SCANCODE_KP_OCTAL
  SDL_SCANCODE_KP_PERCENT
  SDL_SCANCODE_KP_PERIOD
  SDL_SCANCODE_KP_PLUS
  SDL_SCANCODE_KP_PLUSMINUS
  SDL_SCANCODE_KP_POWER
  SDL_SCANCODE_KP_RIGHTBRACE
  SDL_SCANCODE_KP_RIGHTPAREN
  SDL_SCANCODE_KP_SPACE
  SDL_SCANCODE_KP_TAB
  SDL_SCANCODE_KP_VERTICALBAR
  SDL_SCANCODE_KP_XOR
  SDL_SCANCODE_L
  SDL_SCANCODE_LALT
  SDL_SCANCODE_LANG1
  SDL_SCANCODE_LANG2
  SDL_SCANCODE_LANG3
  SDL_SCANCODE_LANG4
  SDL_SCANCODE_LANG5
  SDL_SCANCODE_LANG6
  SDL_SCANCODE_LANG7
  SDL_SCANCODE_LANG8
  SDL_SCANCODE_LANG9
  SDL_SCANCODE_LCTRL
  SDL_SCANCODE_LEFT
  SDL_SCANCODE_LEFTBRACKET
  SDL_SCANCODE_LGUI
  SDL_SCANCODE_LSHIFT
  SDL_SCANCODE_M
  SDL_SCANCODE_MAIL
  SDL_SCANCODE_MEDIASELECT
  SDL_SCANCODE_MENU
  SDL_SCANCODE_MINUS
  SDL_SCANCODE_MODE
  SDL_SCANCODE_MUTE
  SDL_SCANCODE_N
  SDL_SCANCODE_NONUSBACKSLASH
  SDL_SCANCODE_NONUSHASH
  SDL_SCANCODE_NUMLOCKCLEAR
  SDL_SCANCODE_O
  SDL_SCANCODE_OPER
  SDL_SCANCODE_OUT
  SDL_SCANCODE_P
  SDL_SCANCODE_PAGEDOWN
  SDL_SCANCODE_PAGEUP
  SDL_SCANCODE_PASTE
  SDL_SCANCODE_PAUSE
  SDL_SCANCODE_PERIOD
  SDL_SCANCODE_POWER
  SDL_SCANCODE_PRINTSCREEN
  SDL_SCANCODE_PRIOR
  SDL_SCANCODE_Q
  SDL_SCANCODE_R
  SDL_SCANCODE_RALT
  SDL_SCANCODE_RCTRL
  SDL_SCANCODE_RETURN
  SDL_SCANCODE_RETURN2
  SDL_SCANCODE_RGUI
  SDL_SCANCODE_RIGHT
  SDL_SCANCODE_RIGHTBRACKET
  SDL_SCANCODE_RSHIFT
  SDL_SCANCODE_S
  SDL_SCANCODE_SCROLLLOCK
  SDL_SCANCODE_SELECT
  SDL_SCANCODE_SEMICOLON
  SDL_SCANCODE_SEPARATOR
  SDL_SCANCODE_SLASH
  SDL_SCANCODE_SLEEP
  SDL_SCANCODE_SPACE
  SDL_SCANCODE_STOP
  SDL_SCANCODE_SYSREQ
  SDL_SCANCODE_T
  SDL_SCANCODE_TAB
  SDL_SCANCODE_THOUSANDSSEPARATOR
  SDL_SCANCODE_U
  SDL_SCANCODE_UNDO
  SDL_SCANCODE_UNKNOWN
  SDL_SCANCODE_UP
  SDL_SCANCODE_V
  SDL_SCANCODE_VOLUMEDOWN
  SDL_SCANCODE_VOLUMEUP
  SDL_SCANCODE_W
  SDL_SCANCODE_WWW
  SDL_SCANCODE_X
  SDL_SCANCODE_Y
  SDL_SCANCODE_Z
  SDL_SWSURFACE
  SDL_SYSTEM_CURSOR_ARROW
  SDL_SYSTEM_CURSOR_CROSSHAIR
  SDL_SYSTEM_CURSOR_HAND
  SDL_SYSTEM_CURSOR_IBEAM
  SDL_SYSTEM_CURSOR_NO
  SDL_SYSTEM_CURSOR_SIZEALL
  SDL_SYSTEM_CURSOR_SIZENESW
  SDL_SYSTEM_CURSOR_SIZENS
  SDL_SYSTEM_CURSOR_SIZENWSE
  SDL_SYSTEM_CURSOR_SIZEWE
  SDL_SYSTEM_CURSOR_WAIT
  SDL_SYSTEM_CURSOR_WAITARROW
  SDL_SYSWMEVENT
  SDL_TEXTEDITING
  SDL_TEXTEDITINGEVENT_TEXT_SIZE
  SDL_TEXTINPUT
  SDL_TEXTINPUTEVENT_TEXT_SIZE
  SDL_TEXTUREACCESS_STATIC
  SDL_TEXTUREACCESS_STREAMING
  SDL_TEXTUREACCESS_TARGET
  SDL_TEXTUREMODULATE_ALPHA
  SDL_TEXTUREMODULATE_COLOR
  SDL_TEXTUREMODULATE_NONE
  SDL_THREAD_PRIORITY_HIGH
  SDL_THREAD_PRIORITY_LOW
  SDL_THREAD_PRIORITY_NORMAL
  SDL_THREAD_PTHREAD
  SDL_THREAD_PTHREAD_RECURSIVE_MUTEX
  SDL_TIMER_UNIX
  SDL_TOUCH_MOUSEID
  SDL_TRUE
  SDL_UNSUPPORTED
  SDL_USEREVENT
  SDL_VIDEO_DRIVER_DUMMY
  SDL_VIDEO_DRIVER_X11
  SDL_VIDEO_DRIVER_X11_CONST_PARAM_XEXTADDDISPLAY
  SDL_VIDEO_DRIVER_X11_HAS_XKBKEYCODETOKEYSYM
  SDL_VIDEO_DRIVER_X11_SUPPORTS_GENERIC_EVENTS
  SDL_VIDEO_DRIVER_X11_XCURSOR
  SDL_VIDEO_DRIVER_X11_XINERAMA
  SDL_VIDEO_DRIVER_X11_XINPUT2
  SDL_VIDEO_DRIVER_X11_XINPUT2_SUPPORTS_MULTITOUCH
  SDL_VIDEO_DRIVER_X11_XRANDR
  SDL_VIDEO_DRIVER_X11_XSHAPE
  SDL_VIDEO_DRIVER_X11_XVIDMODE
  SDL_VIDEO_OPENGL
  SDL_VIDEO_OPENGL_GLX
  SDL_VIDEO_RENDER_OGL
  SDL_WINDOWEVENT
  SDL_WINDOWEVENT_CLOSE
  SDL_WINDOWEVENT_ENTER
  SDL_WINDOWEVENT_EXPOSED
  SDL_WINDOWEVENT_FOCUS_GAINED
  SDL_WINDOWEVENT_FOCUS_LOST
  SDL_WINDOWEVENT_HIDDEN
  SDL_WINDOWEVENT_LEAVE
  SDL_WINDOWEVENT_MAXIMIZED
  SDL_WINDOWEVENT_MINIMIZED
  SDL_WINDOWEVENT_MOVED
  SDL_WINDOWEVENT_NONE
  SDL_WINDOWEVENT_RESIZED
  SDL_WINDOWEVENT_RESTORED
  SDL_WINDOWEVENT_SHOWN
  SDL_WINDOWEVENT_SIZE_CHANGED
  SDL_WINDOWPOS_CENTERED_MASK
  SDL_WINDOWPOS_UNDEFINED_MASK
  SDL_WINDOW_BORDERLESS
  SDL_WINDOW_FOREIGN
  SDL_WINDOW_FULLSCREEN
  SDL_WINDOW_FULLSCREEN_DESKTOP
  SDL_WINDOW_HIDDEN
  SDL_WINDOW_INPUT_FOCUS
  SDL_WINDOW_INPUT_GRABBED
  SDL_WINDOW_MAXIMIZED
  SDL_WINDOW_MINIMIZED
  SDL_WINDOW_MOUSE_FOCUS
  SDL_WINDOW_OPENGL
  SDL_WINDOW_RESIZABLE
  SDL_WINDOW_SHOWN
  SDLK_0
  SDLK_1
  SDLK_2
  SDLK_3
  SDLK_4
  SDLK_5
  SDLK_6
  SDLK_7
  SDLK_8
  SDLK_9
  SDLK_a
  SDLK_AC_BACK
  SDLK_AC_BOOKMARKS
  SDLK_AC_FORWARD
  SDLK_AC_HOME
  SDLK_AC_REFRESH
  SDLK_AC_SEARCH
  SDLK_AC_STOP
  SDLK_AGAIN
  SDLK_ALTERASE
  SDLK_QUOTE
  SDLK_APPLICATION
  SDLK_AUDIOMUTE
  SDLK_AUDIONEXT
  SDLK_AUDIOPLAY
  SDLK_AUDIOPREV
  SDLK_AUDIOSTOP
  SDLK_b
  SDLK_BACKSLASH
  SDLK_BACKSPACE
  SDLK_BRIGHTNESSDOWN
  SDLK_BRIGHTNESSUP
  SDLK_c
  SDLK_CALCULATOR
  SDLK_CANCEL
  SDLK_CAPSLOCK
  SDLK_CLEAR
  SDLK_CLEARAGAIN
  SDLK_COMMA
  SDLK_COMPUTER
  SDLK_COPY
  SDLK_CRSEL
  SDLK_CURRENCYSUBUNIT
  SDLK_CURRENCYUNIT
  SDLK_CUT
  SDLK_d
  SDLK_DECIMALSEPARATOR
  SDLK_DELETE
  SDLK_DISPLAYSWITCH
  SDLK_DOWN
  SDLK_e
  SDLK_EJECT
  SDLK_END
  SDLK_EQUALS
  SDLK_ESCAPE
  SDLK_EXECUTE
  SDLK_EXSEL
  SDLK_f
  SDLK_F1
  SDLK_F10
  SDLK_F11
  SDLK_F12
  SDLK_F13
  SDLK_F14
  SDLK_F15
  SDLK_F16
  SDLK_F17
  SDLK_F18
  SDLK_F19
  SDLK_F2
  SDLK_F20
  SDLK_F21
  SDLK_F22
  SDLK_F23
  SDLK_F24
  SDLK_F3
  SDLK_F4
  SDLK_F5
  SDLK_F6
  SDLK_F7
  SDLK_F8
  SDLK_F9
  SDLK_FIND
  SDLK_g
  SDLK_BACKQUOTE
  SDLK_h
  SDLK_HELP
  SDLK_HOME
  SDLK_i
  SDLK_INSERT
  SDLK_j
  SDLK_k
  SDLK_KBDILLUMDOWN
  SDLK_KBDILLUMTOGGLE
  SDLK_KBDILLUMUP
  SDLK_KP_0
  SDLK_KP_00
  SDLK_KP_000
  SDLK_KP_1
  SDLK_KP_2
  SDLK_KP_3
  SDLK_KP_4
  SDLK_KP_5
  SDLK_KP_6
  SDLK_KP_7
  SDLK_KP_8
  SDLK_KP_9
  SDLK_KP_A
  SDLK_KP_AMPERSAND
  SDLK_KP_AT
  SDLK_KP_B
  SDLK_KP_BACKSPACE
  SDLK_KP_BINARY
  SDLK_KP_C
  SDLK_KP_CLEAR
  SDLK_KP_CLEARENTRY
  SDLK_KP_COLON
  SDLK_KP_COMMA
  SDLK_KP_D
  SDLK_KP_DBLAMPERSAND
  SDLK_KP_DBLVERTICALBAR
  SDLK_KP_DECIMAL
  SDLK_KP_DIVIDE
  SDLK_KP_E
  SDLK_KP_ENTER
  SDLK_KP_EQUALS
  SDLK_KP_EQUALSAS400
  SDLK_KP_EXCLAM
  SDLK_KP_F
  SDLK_KP_GREATER
  SDLK_KP_HASH
  SDLK_KP_HEXADECIMAL
  SDLK_KP_LEFTBRACE
  SDLK_KP_LEFTPAREN
  SDLK_KP_LESS
  SDLK_KP_MEMADD
  SDLK_KP_MEMCLEAR
  SDLK_KP_MEMDIVIDE
  SDLK_KP_MEMMULTIPLY
  SDLK_KP_MEMRECALL
  SDLK_KP_MEMSTORE
  SDLK_KP_MEMSUBTRACT
  SDLK_KP_MINUS
  SDLK_KP_MULTIPLY
  SDLK_KP_OCTAL
  SDLK_KP_PERCENT
  SDLK_KP_PERIOD
  SDLK_KP_PLUS
  SDLK_KP_PLUSMINUS
  SDLK_KP_POWER
  SDLK_KP_RIGHTBRACE
  SDLK_KP_RIGHTPAREN
  SDLK_KP_SPACE
  SDLK_KP_TAB
  SDLK_KP_VERTICALBAR
  SDLK_KP_XOR
  SDLK_l
  SDLK_LALT
  SDLK_LCTRL
  SDLK_LEFT
  SDLK_LEFTBRACKET
  SDLK_LGUI
  SDLK_LSHIFT
  SDLK_m
  SDLK_MAIL
  SDLK_MEDIASELECT
  SDLK_MENU
  SDLK_MINUS
  SDLK_MODE
  SDLK_MUTE
  SDLK_n
  SDLK_NUMLOCKCLEAR
  SDLK_o
  SDLK_OPER
  SDLK_OUT
  SDLK_p
  SDLK_PAGEDOWN
  SDLK_PAGEUP
  SDLK_PASTE
  SDLK_PAUSE
  SDLK_PERIOD
  SDLK_POWER
  SDLK_PRINTSCREEN
  SDLK_PRIOR
  SDLK_q
  SDLK_r
  SDLK_RALT
  SDLK_RCTRL
  SDLK_RETURN
  SDLK_RETURN2
  SDLK_RGUI
  SDLK_RIGHT
  SDLK_RIGHTBRACKET
  SDLK_RSHIFT
  SDLK_s
  SDLK_SCROLLLOCK
  SDLK_SELECT
  SDLK_SEMICOLON
  SDLK_SEPARATOR
  SDLK_SLASH
  SDLK_SLEEP
  SDLK_SPACE
  SDLK_STOP
  SDLK_SYSREQ
  SDLK_t
  SDLK_TAB
  SDLK_THOUSANDSSEPARATOR
  SDLK_u
  SDLK_UNDO
  SDLK_UNKNOWN
  SDLK_UP
  SDLK_v
  SDLK_VOLUMEDOWN
  SDLK_VOLUMEUP
  SDLK_w
  SDLK_WWW
  SDLK_x
  SDLK_y
  SDLK_z
  SDLK_AMPERSAND
  SDLK_ASTERISK
  SDLK_AT
  SDLK_CARET
  SDLK_COLON
  SDLK_DOLLAR
  SDLK_EXCLAIM
  SDLK_GREATER
  SDLK_HASH
  SDLK_LEFTPAREN
  SDLK_LESS
  SDLK_PERCENT
  SDLK_PLUS
  SDLK_QUESTION
  SDLK_QUOTEDBL
  SDLK_RIGHTPAREN
  SDLK_UNDERSCORE
  SDL_WINDOWPOS_CENTERED
  SDL_WINDOWPOS_UNDEFINED
  SDL_Delay
  SDL_GetTicks
  SDL_Init
  SDL_Quit
  SDL_WasInit
  SDL_CreateWindow
  SDL_DestroyWindow
  SDL_GL_GetCurrentWindow
  SDL_GL_CreateContext
  SDL_GL_GetCurrentContext
  SDL_GL_DeleteContext
  SDL_GL_MakeCurrent
  SDL_GL_SwapWindow
  SDL_WindowEvent?
  make-SDL_WindowEvent
  SDL_WindowEvent-type
  SDL_WindowEvent-timestamp
  SDL_WindowEvent-windowID
  SDL_WindowEvent-event
  SDL_WindowEvent-data1
  SDL_WindowEvent-data2
  SDL_Keysym?
  make-SDL_Keysym
  SDL_Keysym-scancode
  SDL_Keysym-sym
  SDL_Keysym-mod
  SDL_Keysym-unused
  SDL_KeyboardEvent?
  make-SDL_KeyboardEvent
  SDL_KeyboardEvent-type
  SDL_KeyboardEvent-timestamp
  SDL_KeyboardEvent-windowID
  SDL_KeyboardEvent-state
  SDL_KeyboardEvent-repeat
  SDL_KeyboardEvent-keysym
  SDL_MouseButtonEvent?
  make-SDL_MouseButtonEvent
  SDL_MouseButtonEvent-type
  SDL_MousebuttonEvent-timestamp
  SDL_MouseButtonEvent-windowID
  SDL_MouseButtonEvent-which
  SDL_MouseButtonEvent-button
  SDL_MouseButtonEvent-state
  SDL_MouseButtonEvent-clicks
  SDL_MouseButtonEvent-x
  SDL_MouseButtonEvent-y
  SDL_MouseMotionEvent?
  make-SDL_MouseMotionEvent
  SDL_MouseMotionEvent-type
  SDL_MouseMotionEvent-timestamp
  SDL_MouseMotionEvent-windowID
  SDL_MouseMotionEvent-which
  SDL_MouseMotionEvent-state
  SDL_MouseMotionEvent-x
  SDL_MouseMotionEvent-y
  SDL_MouseMotionEvent-xrel
  SDL_MouseMotionEvent-yrel
  SDL_Event?
  make-SDL_Event
  SDL_Event-type
  SDL_Event-window
  SDL_Event-key
  SDL_Event-button
  SDL_Event-motion
  SDL_PollEvent
  SDL_PixelFormat?
  make-SDL_PixelFormat
  SDL_PixelFormat-format
  SDL_PixelFormat-palette
  SDL_PixelFormat-BitsPerPixel
  SDL_PixelFormat-BytesPerPixel
  SDL_PixelFormat-Rmask
  SDL_PixelFormat-Gmask
  SDL_PixelFormat-Bmask
  SDL_PixelFormat-Amask
  SDL_PixelFormat-Rloss
  SDL_PixelFormat-Gloss
  SDL_PixelFormat-Bloss
  SDL_PixelFormat-Aloss
  SDL_PixelFormat-Rshift
  SDL_PixelFormat-Gshift
  SDL_PixelFormat-Bshift
  SDL_PixelFormat-Ashift
  SDL_PixelFormat-refcount
  SDL_PixelFormat-next
  SDL_Rect?
  make-SDL_Rect
  SDL_Rect-x
  SDL_Rect-y
  SDL_Rect-w
  SDL_Rect-h
  SDL_Surface?
  make-SDL_Surface
  SDL_Surface-format
  SDL_Surface-w
  SDL_Surface-h
  SDL_Surface-pitch
  SDL_Surface-pixels
  SDL_Surface-userdata
  SDL_Surface-locked
  SDL_Surface-lock_data
  SDL_Surface-clip_rect
  SDL_Surface-map
  SDL_Surface-refcount
  SDL_Surface_from_ptr
  SDL_FreeSurface
)
)
