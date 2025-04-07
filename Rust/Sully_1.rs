use std::fs::File;
use std::io::Write;
use std::process::Command;

fn main ()
{
    let i:i32   = 1_;
    if i == 0 {return ;}
    let file = File::create(format!("Sully_{}.rs", i - 1));
    let str: String = format!("use std::fs::File;\nuse std::io::Write;\nuse std::process::Command;\n\nfn main ()\n{{\n    let i:i32   = {}_;\n    if i == 0 {{return ;}}\n    let file = File::create(format!(\"Sully_{{}}.rs\", i - 1));\n    let str: String = format!(\"%r\", i - 1).into();\n\n    let _ = file.expect(\"REASON\").write(str.replacen(\"%r\", str.replace(\"{{\", \"{{{{\").replace(\"}}\", \"}}}}\").replace(\"\\\\\", \"\\\\\\\\\").replace(\"\\n\", \"\\\\n\").replace(\"\\\"\", \"\\\\\\\"\").replace(format!(\"{{}}_\", i - 1).as_str(), \"{{}}_\").as_str(), 1).as_bytes());\n    let mut _cmd = Command::new(\"rustc\").arg(format!(\"Sully_{{}}.rs\", i - 1)).status();\n    let mut _cm = Command::new(format!(\"./Sully_{{}}\", i - 1)).status();\n}}\n", i - 1).into();

    let _ = file.expect("REASON").write(str.replacen("%r", str.replace("{", "{{").replace("}", "}}").replace("\\", "\\\\").replace("\n", "\\n").replace("\"", "\\\"").replace(format!("{}_", i - 1).as_str(), "{}_").as_str(), 1).as_bytes());
    let mut _cmd = Command::new("rustc").arg(format!("Sully_{}.rs", i - 1)).status();
    let mut _cm = Command::new(format!("./Sully_{}", i - 1)).status();
}
