// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        var invitees = [""]
        var userAppend = true
        var userRemove = false
        while userAppend {
            print ("Type the names of people you would like to invite to the party:")
            let userInput = 
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
            }
        }
        }

}