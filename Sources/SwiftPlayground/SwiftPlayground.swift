// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

        print("Enter the length of the movie in minutes:")
        var running = true
        var movies:(Double) []
        while running{
            if let input = readLine(), let movieLength = Double(input) {
            if movieLength < 30 || movieLength > 300 {
                print("Movie length out of bounds.")
            } else {
                print("Movie length accepted: \(movieLength) minutes.")
            }
            } else {
                print("Please enter a valid number for the movie length.")
            }

        }
        

    }

}