// comment 1
fn other_fct() {}

fn main() {
	other_fct();
	// comment 2
    macro_rules! script {() => {"// comment 1\nfn other_fct() {{}}\n\nfn main() {{\n\tother_fct();\n\t// comment 2\n\tmacro_rules! script {{() => {{{:?}}}}}\n\tprintln!(script!(), script!());\n}}"}}
    println!(script!(), script!());
}