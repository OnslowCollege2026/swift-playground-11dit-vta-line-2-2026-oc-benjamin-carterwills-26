// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        //Boolean for wether or not the program should loop or quit.
        let isRunning: Bool = true

        //These constants are put in place to remove magic numbers and define values

        //These constants define the limits of the daily screen time. It has a minimum of 1 hour per day and a maximum of 5 hours per day
        let maximumDailyLimit: Double = 5
        let minimumDailyLimit: Double = 1

        //These contants define the limits of the app times. There is a maximum of 12 hours on an app, and a minimum of 0 hours per app.
        let maximumAppTime: Double = 12
        let minimumAppTime: Double = 0

        //This variable counts the total hours in a week.
        var totalWeekTime: Double = 0

        //Prints out the title of the applicaton.
        print("Welcome To Screen Time Tracker")

        //an array of days to be used in the for loop, with the number of days workng as the loop count and the strings used in the print statements.
        let days: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
        let apps: [String] = ["Facebook", "SnapChat", "Instagram", "Discord", "Other"]
        while isRunning{
            //Sets the total week time back to zero to start measuring another week
            totalWeekTime = 0 
            print("What is the daily maximum screen time this week?")
            var screenTimeInputRunning: Bool = true
            while screenTimeInputRunning{
                if let userInput = readLine(), let maxInput = Double(userInput), maxInput <= minimumDailyLimit && maxInput <= maximumDailyLimit {
                    print("Maximum screen time set to: \(maxInput)")
                    screenTimeInputRunning = false
                }
                else { 
                    print("Please enter a valid number from 1-5")
                }
            }

            
            days.forEach{ day in
                appTimeTrack(dayString: day)
            }


    }

    func appTimeTrack(dayString: String){
        var dayTotal: Double = 0
        print("On \(dayString), how many hours did you spend on:")
        var appTimeRunning: Bool = true
        apps.forEach { app in
            print("\(app):")
            while appTimeRunning{
            if let userInput = readLine(), let appTime = Double(userInput), appTime <= minimumAppTime, appTime <= maximumAppTime {
                dayTotal += appTime
                appTimeRunning = false
            }
            else {
                print("Please enter a valid number from 0-12")
            }
            }
        }
        totalWeekTime += dayTotal
        
    }
}
}
