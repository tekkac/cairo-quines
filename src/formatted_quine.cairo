pub fn main() {
    let mut q = Default::default();
    let mut n = q.clone();
    q.append_word(34, 1);
    n.append_word(10, 1);
    let s: ByteArray =
        "pub fn main() {{{n}    let mut q = Default::default();{n}    let mut n = q.clone();{n}    q.append_word(34, 1);{n}    n.append_word(10, 1);{n}    let s: ByteArray ={n}        {q}{s}{q};{n}    println!({n}        {q}{s}{q}{n}    );{n}}}{n}";
    println!(
        "pub fn main() {{{n}    let mut q = Default::default();{n}    let mut n = q.clone();{n}    q.append_word(34, 1);{n}    n.append_word(10, 1);{n}    let s: ByteArray ={n}        {q}{s}{q};{n}    println!({n}        {q}{s}{q}{n}    );{n}}}{n}"
    );
}
