// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        print("Enter Your Age:")

        var userInput = readLine()!
        let age = Int(userInput)!

        print("Enter The Password")
        userInput = readLine()!


        let isOldEnough = age >= 18
        let knowsSecret = userInput == "2007 BMW E91 320i"
        let canEnterBar = isOldEnough && knowsSecret

        print("Can Enter Bar: \(canEnterBar)")



    }
}
