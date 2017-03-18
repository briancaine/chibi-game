all : src/bcaine/sdl2.so src/bcaine/sdl2-image.so

src/bcaine/sdl2.c : src/bcaine/sdl2.stub
	chibi-ffi src/bcaine/sdl2.stub

src/bcaine/sdl2.so : src/bcaine/sdl2.c
	cc -fPIC -shared src/bcaine/sdl2.c -lchibi-scheme `sdl2-config --libs --cflags` -o src/bcaine/sdl2.so

src/bcaine/sdl2-image.c : src/bcaine/sdl2-image.stub
	chibi-ffi src/bcaine/sdl2-image.stub

src/bcaine/sdl2-image.so : src/bcaine/sdl2-image.c
	cc -fPIC -shared src/bcaine/sdl2-image.c -lchibi-scheme `sdl2-config --libs --cflags` -lSDL2_image -o src/bcaine/sdl2-image.so

clean :
	rm -f src/bcaine/sdl2.c src/bcaine/sdl2.so
