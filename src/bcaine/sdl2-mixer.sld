(define-library (bcaine sdl2-mixer)
  (import (chibi))
  (include-shared "sdl2-mixer")
  (export
   MIX_INIT_FLAC
  MIX_INIT_MOD
  MIX_INIT_MP3
  MIX_INIT_OGG
  Mix_Init
  Mix_Quit
  Mix_OpenAudio
  AUDIO_U8
  AUDIO_S8
  AUDIO_U16LSB
  AUDIO_S16LSB
  AUDIO_U16MSB
  AUDIO_S16MSB
  AUDIO_U16
  AUDIO_S16
  AUDIO_U16SYS
  AUDIO_S16SYS
  MIX_DEFAULT_FORMAT
  Mix_CloseAudio
  Mix_GetError
  Mix_LoadWAV
  Mix_FreeChunk
  Mix_PlayChannel
  Mix_PlayChannelTimed
  Mix_HaltChannel
  Mix_AllocateChannels
  Mix_Playing
  Mix_SetSoundFonts
))
