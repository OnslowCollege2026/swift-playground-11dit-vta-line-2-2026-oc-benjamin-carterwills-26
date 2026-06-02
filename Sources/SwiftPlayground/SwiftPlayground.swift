// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        print("Enter the first number (left-hand side): ")
        let leftHandSide = Int(readLine()!)!
        print("Enter the second number (right-hand side): ")
        let rightHandSide = Int(readLine()!)!


        print("Type add, subtract, multiply or divide: ")
        let calculationType = readLine()!.lowercased()


        func add() {
        let answer = leftHandSide + rightHandSide
        print("\(leftHandSide) + \(rightHandSide) = \(answer)")
        }


        func subtract() {
        let answer = leftHandSide - rightHandSide
        print("\(leftHandSide) - \(rightHandSide) = \(answer)")
        }

        func multiply() {
        let answer = leftHandSide * rightHandSide
        print("\(leftHandSide) * \(rightHandSide) = \(answer)")
        }

        func divide() {
        let answer = leftHandSide / rightHandSide
        print("\(leftHandSide) / \(rightHandSide) = \(answer)")
        }


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