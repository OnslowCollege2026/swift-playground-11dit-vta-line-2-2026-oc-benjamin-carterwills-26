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

        //This one is self-explanitory. It prints out the title.
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
            //Prints out what the user set the maximum screen time limit to, then introduces them to the next part of the program.
            print("Screen Time Maximum Set To: \(maxInput). Let's record the actual hours you spend on your device.")

            //repeats the loop for each day in the week array.
            days.forEach{ day in
                //A variable used to store the total sum of the hours of each app.
                var dayTotal: Double = 0
                print("On \(day), how many hours did you spend on:")
                //repeats this loop for each app in the apps array.
                apps.forEach { app in
                    print("\(app):")
                    //Calls the Double Check function to get user input to see how many hours they spent on each app, while making sure it is a Double, above the minimum app time and below the maximum app time, then adds that input to the day total.
                    dayTotal += checkDouble(minimum: minimumAppTime, maximum: maximumAppTime)
                }
                //Prints the total hours the user spent doomscrolling on that day.
                print("Overall on \(day) you spent \(dayTotal) hours doom scrolling.")
                //Adds the day total to the week total. 
                totalWeekTime += dayTotal
                }

            //Makes a daily average by dividing the total week time by the amount of days in the week. I useed days.count to remove magic numbers, but natually it is 7.
            let dailyAverage = totalWeekTime / Double(days.count)
            //Makes an per app average by dividing the daily average by the amount of apps in the apps array.
            let appAverage = dailyAverage / Double(apps.count)
            //fancy formatting.
            print("=---------------------------------------------------------------------=")
            print("CONCLUSION")
            print("=---------------------------------------------------------------------=")
            print("This week, you spent a total of \(totalWeekTime) hours doom scrolling. This results to an average of \(dailyAverage) hours per day, and an average of \(appAverage) hours per app.")
            //Tells the user wether or not they have gone over or above the inputted daily screentime limit.
            if (dailyAverage > maxInput){
                print("Overall, you have gone OVERTIME on your screen limit!")
            }
            else{
                print("Overall, you have RESPECTED your screen time limit! Good Job! :)")
            }
            print("=---------------------------------------------------------------------=")
            //ends the application.
            isRunning = false


    }

    //This function is used as an input function. It gets an input from the user, checks if it is Double, and if it is equal to or greater than the specified minimum, and less than or equal to the maximum.
    func checkDouble(minimum: Double, maximum: Double) -> Double{
        //This boolean allows the input function to loop when the user nputs an invalid input.
        var functionRunning: Bool = true
        while functionRunning{
            //If the usersinput is a Double, and fits the minimum and maximum, then return the input to the function call.
            if let userInput = readLine(), let targetInput = Double(userInput), targetInput >= minimum, targetInput <= maximum{
                functionRunning = false
                return targetInput
            }
            else{
                print("Please try again. You must enter a valid number between \(minimum) and \(maximum)")
            }
        }
        
    }
}
}
