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

sdl2.placeholder : src/sdl2.sld src/sdl2.stub src/sdl2.scm src/sdl2.version src/sdl2.desc
	snow-chibi package --version=`cat src/sdl2.version` --description="`cat src/sdl2.desc`" src/sdl2.sld
	touch sdl2.placeholder

sdl2-obj.placeholder : src/sdl2/obj.sld src/sdl2/obj.scm src/sdl2/obj.version src/sdl2/obj.desc
	snow-chibi package --version=`cat src/sdl2/obj.version` --description="`cat src/sdl2/obj.desc`" src/sdl2/obj.sld
	touch sdl2-obj.placeholder

sdl2-image.placeholder : src/sdl2-image.sld src/sdl2-image.stub src/sdl2-image.version src/sdl2-image.desc
	snow-chibi package --version=`cat src/sdl2-image.version` --description="`cat src/sdl2-image.desc`" src/sdl2-image.sld
	touch sdl2-image.placeholder

sdl2-mixer.placeholder : src/sdl2-mixer.sld src/sdl2-mixer.stub src/sdl2-mixer.version src/sdl2-mixer.desc
	snow-chibi package --version=`cat src/sdl2-mixer.version` --description="`cat src/sdl2-mixer.desc`" src/sdl2-mixer.sld
	touch sdl2-mixer.placeholder

package : sdl2.placeholder sdl2-image.placeholder sdl2-mixer.placeholder sdl2-obj.placeholder

clean :
	rm -f src/sdl2.c src/sdl2.so src/sdl2-image.c src/sdl2-image.so src/sdl2-mixer.c src/sdl2-mixer.so sdl2-0.0.1.tgz sdl2-image-0.0.1.tgz sdl2-mixer-0.0.1.tgz sdl2-obj-0.0.1.tgz
	rm -f src/sdl2.sld src/sdl2-mixer.sld src/sdl2-image.sld
	rm -f *.tgz *.placeholder
