// comment 1
const s1: &str = "test";
const s2: &str = "test2";

fn main() {
	macro_rules! script {() => {"// comment 1\nconst s1: &str = \"test\";\nconst s2: &str = \"test2\";\n\nfn main() {{\n\tmacro_rules! script {{() => {{{:?}}}}};\n\tprintln!(script!(), script!());\n}}"}};
	println!(script!(), script!());
}
