use std::io;

fn main() {
    // Hard-coded string to compare against
    let secret: &str = "1111000101101011000101110";
    //let secret: &str = "55";

    // Prompt user for input
    println!("Enter bit sequence:");

    // Create a mutable string to store user input
    let mut user_input: String = String::new();

    // Read input from the user
    io::stdin()
        .read_line(&mut user_input)
        .expect("Failed to read line");

    // Trim the input to remove newline characters
    let user_input: &str = user_input.trim();

    // Compare strings and output result
    if user_input == secret {
        println!("You have entered the correct sequence. Look, a Huffman tree!");
        println!("      /   \\     ");
        println!("     E     D     ");
        println!("          /  \\  ");
        println!("         K    S   ");
        println!("        / \\  / \\");
        println!("       H   T R  U");
        println!("      /     ");
        println!("     N       ");
    } else {
        println!("Incorrect sequence, please try again.");
    }

    println!("Press any key to exit..."); 
    let mut exit_key: String = String::new();

    io::stdin()
    .read_line(&mut exit_key)
    .expect("Failed to read line");

}