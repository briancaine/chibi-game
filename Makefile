all : src/bcaine/sdl2.so

src/bcaine/sdl2.c : src/bcaine/sdl2.stub
	chibi-ffi src/bcaine/sdl2.stub

src/bcaine/sdl2.so : src/bcaine/sdl2.c
	cc -fPIC -shared src/bcaine/sdl2.c -lchibi-scheme `sdl2-config --libs --cflags` -o src/bcaine/sdl2.so

clean :
	rm -f src/bcaine/sdl2.c src/bcaine/sdl2.so
