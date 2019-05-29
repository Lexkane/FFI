require 'ffi'

module FFIC
  extend FFI::Library
  
 
  ffi_lib './c/main.so'
  
  attach_function:hello,[],:void
  attach_function:sum,[:int,:int],:int
  
end

module FFICPP
  extend FFI::Library
  
 
  ffi_lib './cpp/main.so'
  
  attach_function:hello,[],:void
  attach_function:sum,[:int,:int],:int
  
end

module FFIGO
  extend FFI::Library
  
 
  ffi_lib './go/main.so'
  
  attach_function:Hello,[],:void
  attach_function:Sum,[:int,:int],:int
  
end

module FFIRUST
  extend FFI::Library
  
   ffi_lib './rust/src/librust.so'
  
  attach_function:Hello,[],:void
  attach_function:Sum,[:int,:int],:int
  
end


puts FFIC.sum(1,2)
puts FFIC.hello()

puts FFICPP.sum(3,4)
puts FFICPP.hello()

puts FFIGO.Sum(5,6)
puts FFIGO.Hello()

puts FFIRUST.Sum(7,8)
puts FFIRUST.Hello()