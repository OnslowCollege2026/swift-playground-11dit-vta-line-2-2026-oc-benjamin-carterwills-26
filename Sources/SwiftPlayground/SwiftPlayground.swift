// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
//Input = User states the number of hours they slept each night.
//Process = Adds the hours they slept to the total sleeptime
//Iteration = Repeats for each day of the week, then asks if they want to repeat again.
//Output = The users average sleeptime from their sleeptime each day.


struct SwiftPlayground {
    static func main() {

        //boolean to dicate the repetition of the program
        var isRunning = true
        
        //Title
        print("Welcome to Sigma Sleep Solutions Sleep Tracker!")
        //While the running loop is true, continue to count the users sleep and average until they change the boolean to false, which indicates that they want to close the prgram
        while isRunning{
            print("Let's begin by recording your hours of sleep.")
            //List of days to be used as a for loop, with each day being used as a repeat value.
            let days: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
            //Declares the 
            var totalSleepTime: Int = 0

            days.forEach { day in
                //boolean used to run the sleepTime loop only for each day, allowing for the int checker to run properly and still loop even if the user enters an invalid input.
                var hoursRunning = true
                while hoursRunning{
                    print("How many hours did you sleep on \(day)? (0-12)")
                    if let userInput = readLine(), let sleepTime = Int(userInput), sleepTime >= 0 && sleepTime <= 12{
                        print("Added \(sleepTime) Hours")
                        totalSleepTime += sleepTime
                        hoursRunning = false
                    } else {
                        print("Please enter a valid integer from 0-12")
                    }
                }
            }
            var sleepStatus: String = ("")
            let averageSleep = totalSleepTime / (days.count)
            let sleepReqiumMet = averageSleep >= 8
            if averageSleep >= 8{
                sleepStatus = ("Good Sleep.")
            } else if averageSleep < 8 && averageSleep >= 6{
                sleepStatus = ("Okay Sleep")
            } else {
                sleepStatus = ("Poor Sleep")
            }
            print("This week, you slept a total of \(totalSleepTime) hours, with an average of \(averageSleep) hours per day.")
            if sleepReqiumMet{
                print ("You have met the recommended average sleep time of 8 hours per day")
            }
            else {
                print ("You have not met the recommended average sleep time of 8 hours per day")
            }

            print ("Your average sleep time indicates that you have had \(sleepStatus)")
            print("Would you like to record another week?")
            let repeatWeek = readLine()!
            if repeatWeek.lowercased() == "n"{
                isRunning = false
            }
            else {
                print("Starting Again...")
            }
        }

        print("Thank you for using the Sigma Sleep Tracker, by Sigma Sleep Solutions!")
    }


}