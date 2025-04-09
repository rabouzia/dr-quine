/*
	comment 1
*/
fn other_fct() {}

fn main() {
	other_fct();
	/*
		comment 2
	*/
	macro_rules! script {() => {"/*\n\tcomment 1\n*/\nfn other_fct() {{}}\n\nfn main() {{\n\tother_fct();\n\t/*\n\t\tcomment 2\n\t*/\n\tmacro_rules! script {{() => {{{:?}}}}}\n\tprintln!(script!(), script!());\n}}"}}
	println!(script!(), script!());
}
