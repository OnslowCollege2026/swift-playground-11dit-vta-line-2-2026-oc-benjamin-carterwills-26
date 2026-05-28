// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        let isRunning = true
        while isRunning{
            
        }
        let ticketCost: Double = 17.5
        let foodCost: Double = 8
        let drinkCost: Double = 12.0
        let perPersonCost: Double = (ticketCost + foodCost + drinkCost)
        let personCount: Double = 5
        let total = (perPersonCost * personCount)

        print("The total food cost for a party of \(personCount) will be\(foodCost * personCount)")
        print("The total drink cost for a party of \(personCount) will be\(drinkCost * personCount)")
        print("Each person needs to pay \(perPersonCost)")
        print("Total cost is: $\(total)")
    }

}