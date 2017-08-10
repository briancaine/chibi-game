all : src/sdl2.so src/sdl2-image.so src/sdl2-mixer.so package

src/sdl2.sld : src/sdl2.preprocess.sld src/sdl2.stub
	chibi-scheme -Rbcaine.sld-stub-expand src/sdl2.preprocess.sld > src/sdl2.sld

src/sdl2.c : src/sdl2.stub
	chibi-ffi src/sdl2.stub

src/sdl2.so : src/sdl2.c
	cc -fPIC -shared src/sdl2.c -lchibi-scheme `sdl2-config --libs --cflags` -o src/sdl2.so

src/sdl2-image.sld : src/sdl2-image.preprocess.sld src/sdl2-image.stub
	chibi-scheme -Rbcaine.sld-stub-expand src/sdl2-image.preprocess.sld > src/sdl2-image.sld

src/sdl2-image.c : src/sdl2-image.stub
	chibi-ffi src/sdl2-image.stub

src/sdl2-image.so : src/sdl2-image.c
	cc -fPIC -shared src/sdl2-image.c -lchibi-scheme `sdl2-config --libs --cflags` -lSDL2_image -o src/sdl2-image.so

src/sdl2-mixer.sld : src/sdl2-mixer.preprocess.sld src/sdl2-mixer.stub
	chibi-scheme -Rbcaine.sld-stub-expand src/sdl2-mixer.preprocess.sld > src/sdl2-mixer.sld

src/sdl2-mixer.c : src/sdl2-mixer.stub
	chibi-ffi src/sdl2-mixer.stub

src/sdl2-mixer.so : src/sdl2-mixer.c
	cc -fPIC -shared src/sdl2-mixer.c -lchibi-scheme `sdl2-config --libs --cflags` -lSDL2_mixer -o src/sdl2-mixer.so

sdl2-0.0.1.tgz : src/sdl2.sld src/sdl2.stub src/sdl2.scm
	snow-chibi package src/sdl2.sld

sdl2-obj-0.0.1.tgz : src/sdl2/obj.sld src/sdl2/obj.scm
	snow-chibi package src/sdl2/obj.sld

sdl2-image-0.0.1.tgz : src/sdl2-image.sld src/sdl2-image.stub
	snow-chibi package src/sdl2-image.sld

sdl2-mixer-0.0.1.tgz : src/sdl2-mixer.sld src/sdl2-mixer.stub
	snow-chibi package src/sdl2-mixer.sld

package : sdl2-0.0.1.tgz sdl2-image-0.0.1.tgz sdl2-mixer-0.0.1.tgz sdl2-obj-0.0.1.tgz

clean :
	rm -f src/sdl2.c src/sdl2.so src/sdl2-image.c src/sdl2-image.so src/sdl2-mixer.c src/sdl2-mixer.so sdl2-0.0.1.tgz sdl2-image-0.0.1.tgz sdl2-mixer-0.0.1.tgz sdl2-obj-0.0.1.tgz
	rm -f src/sdl2.sld src/sdl2-mixer.sld src/sdl2-image.sld
