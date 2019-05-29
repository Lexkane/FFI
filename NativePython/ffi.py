import ctypes

clib = ctypes.cdll.LoadLibrary('./c/main.so')
cpplib = ctypes.cdll.LoadLibrary('./cpp/main.so')
golib = ctypes.cdll.LoadLibrary('./go/main.so')
rustlib = ctypes.cdll.LoadLibrary('./rust/src/librust.so')

clib.hello()
print(clib.sum(1, 2))

cpplib.hello()
print(cpplib.sum(3, 4))


golib.Hello()
print(golib.Sum(5, 6))


rustlib.Hello()
print(rustlib.Sum(7, 8))
