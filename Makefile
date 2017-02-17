CFLAGS = -I ./include
##LIB    = ./libggfonts.so
LFLAGS = -lrt -lX11 -lGLU -lGL -pthread -lm #-lXrandr

all: spaceescape

spaceescape: spaceescape.cpp log.cpp mytime.cpp
	g++ $(CFLAGS) spaceescape.cpp log.cpp mytime.cpp libggfonts.a -Wall -Wextra $(LFLAGS) -ospaceescape

clean:
	rm -f spaceescape
	rm -f *.o

