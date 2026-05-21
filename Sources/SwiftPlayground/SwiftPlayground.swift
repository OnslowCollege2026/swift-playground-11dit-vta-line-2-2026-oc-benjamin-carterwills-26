// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

        print("Enter the length of the movie in minutes:")

        if let input = readLine(), let movieLength = Int(input) {
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