use quines::formatted_quine::main as formatted_quine_main;
use quines::small_quine::main as small_quine_main;
use quines::smaller_quine::main as smaller_quine_main;

#[test]
fn test_formatted_quine() {
    formatted_quine_main();
}

#[test]
fn test_small_quine() {
    small_quine_main();
}

#[test]
fn test_smaller_quine() {
    smaller_quine_main();
}
