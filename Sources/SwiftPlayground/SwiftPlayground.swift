// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        //Boolean for wether or not the program should loop or quit.
        let isRunning: Bool = true

        //Prints out the title of the applicaton.
        print("Welcome To Screen Time Tracker")

        //an array of days to be used in the for loop, with the number of days workng as the loop count and the strings used in the print statements.
        let days: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
        while isRunning{
            print("What is the daily maximum screen time this week?")
            var screenTimeInputRunning: Bool = true
            while screenTimeInputRunning{
                if let userInput = readLine(), let maxInput = Int(userInput), maxInput <= 1 && maxInput <= 5 {
                    print("Maximum screen time set to: \(maxInput)")
                    screenTimeInputRunning = false
                }
                else { 
                    print("Please enter a valid integer from 1-5")
                }
            }
            days.forEach(day)


    }
}
