// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

        /* Test that it works as it should using the testing table
        Task - Only to accept people in if they are over the age of 18 */

        // This function checks to see if the user has inputted a valid integer, with adjustable prompt string and maximum/minumum integers.
        func input(prompt: String, from: Int, to: Int) -> Int { 
         // Runs the integer validity checker over and over until a valid integer is entered, which then returns the integer back to the function caller.
        while true {
            print(prompt, terminator: " ")
            //if the user's input is and integer, then checks if it is between the confgurated maximum and minimum.
            if let userInput = readLine(), let int = Int(userInput), (from...to).contains(int) {
                return int
            } else {
                print("You must enter a valid whole number (integer) from \(from) to \(to).")
            }
        }
        }

        //Calls the integer validity checker, and gives it some configurations.
        let age: Int = input(prompt: "What is your age?", from: 0, to: 100) 

        //This switch checks to see if the user is above 18, if they are 0, or if they are too young. 
        switch age {
        case 0: print("Hello, little baby!")
        case ...17: print("You are too young.")
        default: print("Welcome!")
        }


    }

}