// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        var ticketCostInput: Bool
        var foodCostInput: Bool
        var drinkCostInput: Bool
        var personCountInput: Bool

        let ticketCost: Double
        let ticketCostMax = 100

        let foodCost: Double
        let foodCostMax = 1000

        let drinkCost: Double
        let drinkCostMax = 1000

        let perPersonCost: Double = (ticketCost + foodCost + drinkCost)
        let personCount: Double
        let total = (perPersonCost * personCount)

        ticketCostInput = true

        while ticketCostInput{
            if let input = readLine(), let number = Int(input) {
                print("Success! The ticket cost is is \(number)")

                ticketCostInput = false
                foodCostInput = true

            } 
            else if number > ticketCostMax || number <= 0{
                
            }
            else {
                print("Invalid input. Please enter a valid whole number.")
            }
        }
        

        print("The total food cost for a party of \(personCount) will be\(foodCost * personCount)")
        print("The total drink cost for a party of \(personCount) will be\(drinkCost * personCount)")
        print("Each person needs to pay \(perPersonCost)")
        print("Total cost is: $\(total)")
    }

}