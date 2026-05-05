// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

        let adultFares: [Int]  = [800, 1200, 1500]

        print(adultFares)

        let childFares: [Int]  = [400, 600, 750]

        print(childFares)

        let ticketTypes: [String] = [
            "No Ticket Type!",
            "24-Hour",
            "48-Hour",
            "72-Hour"
        ]

        print("Enter Your Age:")
        
        let userAge = Int(readLine()!)!
        let isAdult = userAge >= 16

        print("Enter Your Ticket Type: (1 = 24-Hour, 2 = 48 Hour, 3 = 72 Hour)")

        let ticketType = Int(readLine()!)!

        if isAdult{
            if ticketType == 1{
                print("Your \(ticketTypes[1]) adult ticket price is: \(adultFares[0])")
            }
            else if ticketType == 2{
                print("Your \(ticketTypes[2]) adult ticket price is: \(adultFares[1])")
            }
            else if ticketType == 3{
                print("Your \(ticketTypes[3]) adult ticket price is: \(adultFares[2])")
            }
            else {
                print("Sorry mate, that's not a valid ticket index!")
            }
        }
        else{
            if ticketType == 1{
                print("Your \(ticketTypes[1]) child ticket price is: \(childFares[0])")
            }
            else if ticketType == 2{
                print("Your \(ticketTypes[2]) child ticket price is: \(childFares[1])")
            }
            else if ticketType == 3{
                print("Your \(ticketTypes[3]) child ticket price is: \(childFares[2])")
            }
            else { 
                print("Sorry, kid! That's not the correct number!")
            }
        }







    }
}
