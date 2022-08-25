# Introduction to Makefiles

So far when you have been building your projects, you have either been typing the command to compile `g++ -o output_name file1.cpp file2.cpp`. 
While this might work for small projects, writing this out every time for larger projects will be much more difficult. 
You also must explain this command to anyone using your software.

It will be beneficial, both from the standpoint of complexity and reproducibility, to instead use a software building tool. 
In Chem 274A and Chem 274B, you will use `Makefiles` to give directions on how to compile or do different things in your projects.

`Makefiles` are used by the program `make` (which you should have installed). `Makefiles` give define what to do for different tasks.
For example, you might type `make executable` to build an executable, or `make clean` to clean up executable files you built previously, or `make test` to run tests.

For this tutorial, we will incrementally write a small `Makefile.` Then you will write a `Makefile` for your Monte Carlo simulation code. 

## Makefile Tutorial
This repostiory contains a very simple C++ project.

This project can be compiled with

```
g++ -o hellomake hellomake.cpp hellofunc.cpp
```

## Task
Take a minute or two to look at the code and describe what it does (it's very simple).

Try making the different targets in this `Makefile`. Write comment above each Makefile target to explain what it does. 

What do these lines represent?

```
CC = g++
CFLAGS = -g -Wall
NAME = hellomake
```

What happens if you remove the targets that end in `.o`?

For example, what happens if you remove

```
hellofunc.o: hellofunc.cpp
	$(CC) $(CFLAGS) -c hellofunc.cpp
```

Can you think of any advantages of using something like `hellomake_v2` or `hellomake_v3`/
