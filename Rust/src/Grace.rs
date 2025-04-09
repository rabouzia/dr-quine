/*
	comment 1
*/
use std::fs::File;
use std::io::Write;
const S1: &str = "test";
const S2: &str = "test2";
const S3: &str = "test3";

fn main() {
	macro_rules! script {() => {"/*\n\tcomment 1\n*/\nuse std::fs::File;\nuse std::io::Write;\nconst S1: &str = \"test\";\nconst S2: &str = \"test2\";\nconst S3: &str = \"test3\";\n\nfn main() {{\n\tmacro_rules! script {{() => {{{:?}}}}}\n\tlet mut file = File::create(\"Grace_kid.rs\").unwrap();\n\tlet _ =write!(file, script!(), script!());\n}}"}}
	let mut file = File::create("Grace_kid.rs").unwrap();
	let _ =write!(file, script!(), script!());
}