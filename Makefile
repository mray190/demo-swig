SHELL=/bin/bash

.PHONY: all
all: run

.PHONY: build
build: main.class

.PHONY: run
run: main.class
	java main

example.java:
	swig -java example.i

example.o: example.java
	gcc -c example.c example_wrap.c \
		-I${JAVA_HOME}/include \
		-I${JAVA_HOME}/include/darwin

libexample.dylib: example.o
	gcc -dynamiclib example_wrap.o $< -o $@

main.class: libexample.dylib
	javac main.java

clean:
	rm -f example.java exampleJNI.java example_wrap.c
	rm -f *.o *.dylib *.class