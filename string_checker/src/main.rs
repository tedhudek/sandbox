use std::io;

fn main() {
    // Hard-coded string to compare against
    let secret = "hello";

    // Prompt user for input
    println!("Please enter a string:");

    // Create a mutable string to store user input
    let mut user_input = String::new();

    // Read input from the user
    io::stdin()
        .read_line(&mut user_input)
        .expect("Failed to read line");

    // Trim the input to remove newline characters
    let user_input = user_input.trim();

    // Compare strings and output result
    if user_input == secret {
        println!("Success! Here's a binary tree with 7 nodes:");
        println!("       1       ");
        println!("      / \\     ");
        println!("     22   3     ");
        println!("    / \\ / \\  ");
        println!("   4  5 6  7   ");
    } else {
        println!("Sorry, the strings don't match.");
    }
}