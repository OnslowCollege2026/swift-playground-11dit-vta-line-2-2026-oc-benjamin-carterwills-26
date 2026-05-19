// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        // Input = the users ingredients
        // Process = Store the users entered strings into an array
        // Iteration = Repeat the Input stage until the user enters an empty value, therfore pressing "enter"
        // Output = printing list of ingrediants, checking for "Chocolate" in array and if found printing "Yum!". End with printing "Lets start cooking!"

        var running = true

        var ingrediantsList: [String] = []
        var listNum = 0


        while running{ //Iteration - repeats the code until the "running" boolean becomes false.
            listNum = ingrediantsList.count
            print ("Please enter an ingredient to add to the list, or press enter to exit. You currently have \(listNum) ingrediants in your list.")

            let userInput = readLine()! // Input stage - after asking question, code waits for input.
            if userInput.lowercased() == (""){
                running = false
            }
            else if userInput.lowercased() == "Chocolate"{
                print ("Chocolate! Yum!!") // Special condition for typing "Chocolate."
            }
            else {
                ingrediantsList.append(userInput) // Process - stores the users entered values to an array.
            }
        }

        print("You list of \(listNum) ingrediants contains the following: \(ingrediantsList).") // Output - Displays the ingrediants and count (a little extra thingy)

        print("Let's Start Cooking!")
    }

}