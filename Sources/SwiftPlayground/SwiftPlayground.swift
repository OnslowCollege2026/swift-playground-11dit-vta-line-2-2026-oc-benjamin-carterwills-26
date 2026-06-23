// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        //variable Boolean for whether or not the program should loop or quit.
        var isRunning: Bool = true

        //These constants are put in place to remove magic numbers and define values

        //These constants define the limits of the daily screen time. It has a minimum of 1 hour per day and a maximum of 5 hours per day
        let maximumDailyLimit: Double = 5
        let minimumDailyLimit: Double = 1

        //These contants define the limits of the app times. There is a maximum of 12 hours on an app, and a minimum of 0 hours per app.
        let maximumAppTime: Double = 12
        let minimumAppTime: Double = 0

        //This variable counts the total hours in a week.

        //Prints out the title of the applicaton.
        print("Welcome To Screen Time Tracker")

        //an array of days to be used in the for loop, with the number of days workng as the loop count and the strings used in the print statements.
        let days: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
        let apps: [String] = ["Facebook", "SnapChat", "Instagram", "Discord", "Other"]
        while isRunning{
            //A variable which is to be modified to hold the sum of all the days hours.
            var totalWeekTime: Double = 0
            print("What is the daily maximum screen time this week?")
            //Calls the Double Checker funtion to make sure the input is a Double, below the maximum and above the minimum
            let maxInput = checkDouble(minimum: minimumDailyLimit, maximum: maximumDailyLimit)

            print("Screen Time Maximum Set To: \(maxInput). Let's record the actual hours you spend on your device.")
            days.forEach{ day in
                var dayTotal: Double = 0
                print("On \(day), how many hours did you spend on:")
                apps.forEach { app in
                    print("\(app):")
                    dayTotal += checkDouble(minimum: minimumAppTime, maximum: maximumAppTime)
                }
                print("Overall on \(day) you spent \(dayTotal) hours doom scrolling.")
                totalWeekTime += dayTotal
                }

            let dailyAverage = totalWeekTime / Double(days.count)
            let appAverage = dailyAverage / Double(apps.count)
            print("=---------------------------------------------------------------------=")
            print("CONCLUSION")
            print("=---------------------------------------------------------------------=")
            print("This week, you spent a total of \(totalWeekTime) hours doom scrolling. This results to an average of \(dailyAverage) hours per day, and an average of \(appAverage) hours per app.")
            if (dailyAverage > maxInput){
                print("Overall, you have gone OVERTIME on your screen limit!")
            }
            else{
                print("Overall, you have RESPECTED your screen time limit! Good Job! :)")
            }
            print("=---------------------------------------------------------------------=")
            isRunning = false


    }


    func checkDouble(minimum: Double, maximum: Double) -> Double{
        var functionRunning: Bool = true
        while functionRunning{
            if let userInput = readLine(), let targetInput = Double(userInput), targetInput >= minimum, targetInput <= maximum{
                functionRunning = false
                return targetInput
            }
            else{
                print("Please enter a valid number between \(minimum) and \(maximum)")
            }
        }
        
    }
}
}
