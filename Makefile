
all: bin/prog.exe

bin/prog.exe: build/main.o build/temp.o
	g++ build/main.o build/temp.o -o bin/prog.exe

build/main.o: src/main.cpp 
	g++ -c src/main.cpp -o build/main.o		

build/temp.o: src/temp.cpp 
	g++ -c src/temp.cpp -o build/temp.o	