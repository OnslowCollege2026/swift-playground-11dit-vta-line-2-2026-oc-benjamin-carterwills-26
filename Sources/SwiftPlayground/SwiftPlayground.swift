// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

        var running = true
        var movies:  [Double] = []
        while running{
            print("Enter the length of the movie in minutes:")
            if let input = readLine(), let movieLength = Double(input) {
                if movieLength < 30 || movieLength > 300 {
                    print("Movie length out of bounds.")
                }
                else if input == (""){
                    running = false
                }
                else {
                    print("Movie length accepted: \(movieLength) minutes.")
                    movies.append(movieLength)
                }
                
            } else {
                print("Please enter a valid number for the movie length.")
            }

        }
        

    }

}