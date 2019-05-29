#[no_mangle]
pub extern "C" fn Hello() {
   println!("hello from rust")
}

#[no_mangle]
pub extern "C" fn Sum(a: i32, b :i32)-> i32 {
   return a+b
}



