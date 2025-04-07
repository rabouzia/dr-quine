// comment 1
use std::fs::File;
use std::io::Write;
use std::process::Command;

fn main() {
	let mut i:i32 = 2;
	if i == 0 { return; }
	i -= 1;
	macro_rules! script {() => {"// comment 1\nuse std::fs::File;\nuse std::io::Write;\nuse std::process::Command;\n\nfn main() {\n\tlet mut i:i32 = %d;\n\tif i == 0 { return; }\n\ti -= 1;\n\tmacro_rules! script {() => {{:?}}}\n\tlet mut file = File::create(format!(\"Sully_{}.rs\", i)).unwrap();\n\tlet code = script!().replacen(\"%d\", &(i).to_string(), 1);\n\tlet _ = write!(file, \"{}\", code.replacen(\"{:?}\", &format!(\"{:?}\", script!()), 1));\n\tlet mut _cmd = Command::new(\"rustc\").arg(format!(\"Sully_{}.rs\", i)).status();\n\tlet mut _cm = Command::new(format!(\"./Sully_{}\", i)).status();\n}\n"}}
	let mut file = File::create(format!("Sully_{}.rs", i)).unwrap();
	let code = script!().replacen("%d", &(i).to_string(), 1);
	let _ = write!(file, "{}", code.replacen("{:?}", &format!("{:?}", script!()), 1));
	let mut _cmd = Command::new("rustc").arg(format!("Sully_{}.rs", i)).status();
	let mut _cm = Command::new(format!("./Sully_{}", i)).status();
}
