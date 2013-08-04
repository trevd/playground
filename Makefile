

all: program 

libfunction.so:
	gcc -fPIC -shared -o -no-libfunction.so function.c

libfunction.so:
	gcc -fPIC -shared -o libfunction.so function.c

program: libfunction.so
	gcc -L. -lfunction program.c -o program


