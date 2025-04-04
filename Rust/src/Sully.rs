use std::fs::File;
use std::io::Write;
use std::process::Command;

const STR: &[u8] = b"use std::fs::File;\nuse std::io::Write;\nuse std::process::Command;\n\nconst STR: &[u8] = b\"edwed\";\nfn main (){\n\tlet mut i:i32   = 5;\n\ti = i -1;\n\tlet file = File::create(format!(\"Sully_{}.rs\", i));\n\n\tlet _ = file.expect(\"REASON\").write(STR);\n\tlet mut _cmd = Command::new(\"rustc\").arg(\"src/Colleen.rs\").status();\n\tlet mut _cm = Command::new(\"./Colleen\").status();\n}";
fn main (){
    let i:i32   = 5;
    let file = File::create(format!("Sully_{}.rs", i));
    let _ = file.expect("REASON").write(STR);

    let mut _cmd = Command::new("rustc").arg(format!("Sully_{}.rs", i)).status();
    let mut _cm = Command::new(format!("./Sully_{}", i)).status();
}   