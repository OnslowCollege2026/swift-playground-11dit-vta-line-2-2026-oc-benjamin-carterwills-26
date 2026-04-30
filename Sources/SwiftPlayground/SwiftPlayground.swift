// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        print("Hello, world!")
    
        print("Set an 'A' Value (Hint: try 21!)")
        let a = Int(readLine()!)!
        print("Set a 'B' Value (Hint: try 22!)")
        let b = Int(readLine()!)!
        let c = a+b 

        let bool1 = c > b
        let bool2 = a < b && a > 20
        let bool3 = (b % 2) == 0 || (a % 2) != 0
        let bool4 = (c % 2) != 0 || c > 50

        print("Boolean 1 returns: \(bool1)")
        print("Boolean 2 returns: \(bool2)")
        print("Boolean 3 returns: \(bool3)")
        print("Boolean 4 returns: \(bool4)")
        let x = bool1 == true && bool2 == true && bool3 == true && bool4 == true

        print("The answer is \(x)")


    }
}
