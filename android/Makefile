all: install

.PHONY: all install build clean

install: build
	adb -s 36335A130C1900EC install -r bin/toRead-debug.apk

build:
	ant debug

clean:
	ant clean
