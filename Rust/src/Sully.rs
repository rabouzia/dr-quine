use std::fs::File;
use std::io::Write;
use std::process::Command;

fn main (){
    let _i:i32   = 0;
    let file = File::create(format!("Sully_{}.rs", _i));
    let _ = file.expect("REASON").write(b"Hello");

    let mut _cmd = Command::new("echo hello\n");
    let _ = _cmd.status();
}   