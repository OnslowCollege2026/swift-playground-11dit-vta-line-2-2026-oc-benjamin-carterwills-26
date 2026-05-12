// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        var selectedTickets = [""]

        print("Welcome to Bog's Ticket Stand!")
        var isRunning = true
        var cost = 0

        while isRunning{
            print("The Ticket prices are as follows:")
            print("")  //adds a blank line for readability.
            print("c for child, $8")
            print("a for adult, $12")
            print("s for senior, $18")
            print("q to quit.")
            print ("") //adds a blank line for readability.
            print("Please add a ticket or quit")

            let userInput = readLine()!.lowercased()

            switch userInput{
                case "q": //Quit
                    print("Thank you. Your order will be:")
                    selectedTickets.forEach { ticket in
                        print(ticket)
                    }
                    print("")
                    print("The final cost will be $\(cost)")
                    isRunning = false
                case "c": //Child ticket
                    cost = cost + 8
                    selectedTickets = selectedTickets + ["Child Ticket"]
                    print("A child ticket has been added. The total price of your tickets wil be: $\(cost)")
                case "a": //Adult ticket
                    cost = cost + 12
                    selectedTickets = selectedTickets + ["Adult Ticket"]
                    print("An adult ticket has been added. The total price of your tickets wil be: $\(cost)")
                case "s": //Child ticket
                    cost = cost + 18
                    selectedTickets = selectedTickets + ["Senior Ticket"]
                    print("A senior ticket has been added. The total price of your tickets wil be: $\(cost)")
                default: print("Invalid Operation. Please Try Again")
            }
        }

    }

}