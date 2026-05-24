// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

    var age: Int? = nil

    while age == nil {
        print("Enter your age:")
        
        if let input = readLine(), let enteredAge = Int(input) {
            if enteredAge < 0 {
                print("Age cannot be negative. Enter a valid age.")
            } else if enteredAge < 18 {
                print("You must be 18 or older. Enter a valid age.")
            } else {
                age = enteredAge
            }
        } else {
            print("Invalid input. Enter a valid integer for age.")
        }}


    print("Valid age entered: \(age!)")

        

    }

}