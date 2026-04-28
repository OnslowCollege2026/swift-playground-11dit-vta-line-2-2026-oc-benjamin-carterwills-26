// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        print("Hello, world!")
        
        let x = 10
        let y = 274

        let added = x+y
        let subtracted = x-y
        let multiplied = x*y
        let divided = x/y
        let remainder = x%y

        let added2 = y+x
        let subtracted2 = y-x
        let multiplied2 = y*x
        let divided2 = y/x
        let remainder2 = y%x

        print("\(x) + \(y) = \(added)")
        print("\(x) - \(y) = \(subtracted)")
        print("\(x) * \(y) = \(multiplied)")
        print("\(x) / \(y) = \(divided)")
        print("\(x) % \(y) = \(remainder)")

        print("\(y) + \(x) = \(added2)")
        print("\(y) - \(x) = \(subtracted2)")
        print("\(y) * \(x) = \(multiplied2)")
        print("\(y) / \(x) = \(divided2)")
        print("\(y) % \(x) = \(remainder2)")

    }
}
