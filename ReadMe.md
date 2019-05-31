Calling Native Code from Python,Javascript and Ruby



Interprocess Comunication Python with Javascript

Use makefile c/cpp/go to build object files

Compile c code with 
	gcc -c -fPIC main.c -o main.o
	gcc main.o -shared -o main.so


Compile cpp code with
	g++ -c -fPIC main.cpp -o main.o
	g++ main.o -shared -o main.so

install go tools for dynamic linking
	 go install -buildmode=shared -linkshared  std
Compile go code with
	go build -o main.so -buildmode=c-shared main.go
        
Compile rust code with
	cargo build --release


##Now you can call native code from python,javascript,ruby
##For javascript you should install ffi package
##For ruby you should install ffi gem
