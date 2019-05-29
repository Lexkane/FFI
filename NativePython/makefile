all:go c cpp

c:force
	cd c; gcc -c -fPIC main.c -o main.o
	cd c; gcc main.o -shared -o main.so

cpp:force
	cd cpp; g++ -c -fPIC main.cpp -o main.o
	cd cpp; g++ main.o -shared -o main.so

go:force
	cd go; go build -o main.so -buildmode=c-shared main.go

rust:force
	cd rust; cargo build --release

