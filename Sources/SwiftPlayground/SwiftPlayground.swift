// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        //Lets the user input two numbers, which are assigned to constants.
        print("Enter the first number (left-hand side): ")
        let leftHandSide = Int(readLine()!)!
        print("Enter the second number (right-hand side): ")
        let rightHandSide = Int(readLine()!)!

        //Asks the user what method they want to use.
        print("Type add, subtract, multiply or divide: ")
        let calculationType = readLine()!.lowercased()

        //This function adds the two numbers together, then prints the equation and answer.
        func add() {
        let answer = leftHandSide + rightHandSide
        print("\(leftHandSide) + \(rightHandSide) = \(answer)")
        }

        //This function subtracts the two numbers together, then prints the equation and answer.
        func subtract() {
        let answer = leftHandSide - rightHandSide
        print("\(leftHandSide) - \(rightHandSide) = \(answer)")
        }
        //This function multiplys the two numbers together, then prints the equation and answer.
        func multiply() {
        let answer = leftHandSide * rightHandSide
        print("\(leftHandSide) * \(rightHandSide) = \(answer)")
        }
        //This function divides the two numbers together, then prints the equation and answer.
        func divide() {
        let answer = leftHandSide / rightHandSide
        print("\(leftHandSide) / \(rightHandSide) = \(answer)")
        }

        //Checks which method the user has picked. 
        if calculationType == "add"{
        add()
        } else if calculationType == "subtract"{
        subtract()
        } else if calculationType == "multiply"{
        multiply()
        } else if calculationType == "divide"{
        divide()
        }

    }

}