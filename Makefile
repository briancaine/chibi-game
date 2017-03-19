all : src/bcaine/sdl2.so src/bcaine/sdl2-image.so src/bcaine/sdl2-mixer.so package

src/bcaine/sdl2.c : src/bcaine/sdl2.stub
	chibi-ffi src/bcaine/sdl2.stub

src/bcaine/sdl2.so : src/bcaine/sdl2.c
	cc -fPIC -shared src/bcaine/sdl2.c -lchibi-scheme `sdl2-config --libs --cflags` -o src/bcaine/sdl2.so

src/bcaine/sdl2-image.c : src/bcaine/sdl2-image.stub
	chibi-ffi src/bcaine/sdl2-image.stub

src/bcaine/sdl2-image.so : src/bcaine/sdl2-image.c
	cc -fPIC -shared src/bcaine/sdl2-image.c -lchibi-scheme `sdl2-config --libs --cflags` -lSDL2_image -o src/bcaine/sdl2-image.so

src/bcaine/sdl2-mixer.c : src/bcaine/sdl2-mixer.stub
	chibi-ffi src/bcaine/sdl2-mixer.stub

src/bcaine/sdl2-mixer.so : src/bcaine/sdl2-mixer.c
	cc -fPIC -shared src/bcaine/sdl2-mixer.c -lchibi-scheme `sdl2-config --libs --cflags` -lSDL2_mixer -o src/bcaine/sdl2-mixer.so

bcaine-sdl2-0.0.1.tgz : src/bcaine/sdl2.sld src/bcaine/sdl2.stub src/bcaine/sdl2.scm
	snow-chibi package src/bcaine/sdl2.sld

bcaine-sdl2-image-0.0.1.tgz : src/bcaine/sdl2-image.sld src/bcaine/sdl2-image.stub
	snow-chibi package src/bcaine/sdl2-image.sld

bcaine-sdl2-mixer-0.0.1.tgz : src/bcaine/sdl2-mixer.sld src/bcaine/sdl2-mixer.stub
	snow-chibi package src/bcaine/sdl2-mixer.sld

package : bcaine-sdl2-0.0.1.tgz bcaine-sdl2-image-0.0.1.tgz bcaine-sdl2-mixer-0.0.1.tgz

clean :
	rm -f src/bcaine/sdl2.c src/bcaine/sdl2.so src/bcaine/sdl2-image.c src/bcaine/sdl2-image.so src/bcaine/sdl2-mixer.c src/bcaine/sdl2-mixer.so bcaine-sdl2-0.0.1.tgz bcaine-sdl2-image-0.0.1.tgz bcaine-sdl2-mixer-0.0.1.tgz
