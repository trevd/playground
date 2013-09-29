

all: program libfunction-stack.so

libfunction.so:
	gcc -fno-stack-protector -fPIC -c -shared -o function.o function.c
	gcc -fno-stack-protector -fPIC -shared -o libfunction.so function.c

libfunction-stack.so:
	gcc -fstack-protector -fPIC -shared -c -o function-stack.o function.c
	gcc -fstack-protector -fPIC -shared -o libfunction-stack.so function.c

program: libfunction.so
	gcc -L. -lfunction program.c -o program

clean:
	rm *.o *.so program
