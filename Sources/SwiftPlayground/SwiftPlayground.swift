// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        var invitees: [String] = []
        var userAppend = true
        var userRemove = false
        while userAppend {
            print ("Type the names of people you would like to invite to the party:")
            let userInput = readLine()!
            if userInput == (""){
                userAppend = false
                userRemove = true
            }
            else{
                invitees.append(userInput)
            }
            }

        while userRemove {
            print("The current list is: \(invitees)") // Lets the user know the current list to see if they want to remove someone.
            print ("If you would like to remove anyone from the list, type their name.")
            let userInput = readLine()!
            if userInput == ""{
                userRemove = false
            }
            else{
                if let index = invitees.firstIndex(of: userInput) {
                     invitees.remove(at: index)
                }
            }
        }

        if invitees.count <= 0{
            print("Your party is Empty!")
        }
        else if invitees.count >= 1 && invitees.count <= 5{
            print("Your party of \(invitees) is a small party!")
        }
        else if invitees.count >= 6 && invitees.count <= 20{
            print("Your party of \(invitees) is a Large Party")
        }
        else if invitees.count > 20{
            print("Your party is too large!")
        }
    }

}