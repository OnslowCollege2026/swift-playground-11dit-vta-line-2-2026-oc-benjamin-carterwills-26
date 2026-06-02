// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

        //TASK 1
        //Tells the user what directions they should follow to get to times square.
        func directionsToTimeSquare(){
            print("Walk 4 mins to 34th St Herald Square train station.")
            print("Take the Northbound N, Q, R, or W train 1 stop.")
            print("Get off the Times Square 42nd Street stop.")
            print("Take lots of pictures! 📸")
            
        }

        directionsToTimeSquare()

        //TASK 2

        let weight: Float = 46
        let height: Float = 1.6

        func findBMI(){
            let bmi = weight / height
            print(bmi)
        }

        findBMI()
    }

}