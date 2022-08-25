CC = g++
CFLAGS = -g -Wall
NAME = hellomake

hellofunc.o: hellofunc.cpp
	$(CC) $(CFLAGS) -c hellofunc.cpp

hellomake.o: hellomake.cpp
	$(CC) $(CFLAGS) -c hellomake.cpp

hellomake_v3: hellomake.o hellofunc.o
	$(CC) $(CFLAGS) -o $(NAME) hellomake.o hellofunc.o

hellomake_v2: hellomake.o hellofunc.o
	g++ -g -Wall -o hellomake hellomake.o hellofunc.o

hellomake: hellomake.cpp hellofunc.cpp
	g++ -g -Wall -o hellomake  hellomake.cpp hellofunc.cpp

clean:
	rm -rf *.o
	rm -rf $(NAME)