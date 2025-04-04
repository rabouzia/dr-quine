use std::fs::File;
use std::io::Write;
use std::process::Command;

const STR: &[u8] = b"edwed";
fn main (){
	let mut i:i32   = 5;
	i = i -1;
	let file = File::create(format!("Sully_{}.rs", i));

	let _ = file.expect("REASON").write(STR);
	let mut _cmd = Command::new("rustc").arg("src/Colleen.rs").status();
	let mut _cm = Command::new("./Colleen").status();
}