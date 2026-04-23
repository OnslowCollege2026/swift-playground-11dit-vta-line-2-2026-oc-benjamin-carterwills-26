// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        print("Hello, world!")
        //Prints "Hello World"

        let firstname = "Benjamin Carter Wills"
        print(firstname)

        //Prints "Onslow College"
        print("Onslow College")


        let primaryrepeatnum = 50 //Constants used for the number of repeats in for loops
        let initialrepeatnum = 50 //Primary is for the first loop, Initial is for the intitials loop.
        let countdownrepeatnum = 10 //This is used for the countdown.

        var number = 0 //Variables used in the various loops.
        var countdown = countdownrepeatnum //Ensures the countdown always ends with 0.

        for _ in 1...primaryrepeatnum {
            number = number + 1
            print("The number is now \(number)")
        }



        print ("B B B")  //The following lines print out a visual "B" shape out of B's
        print ("B     B")
        print ("B B B B")
        print ("B      B")
        print ("B B B B")
        print (" ")  //Puts a space in the lines
        print (" C C C") //Prints out a C
        print ("C")
        print ("C")
        print ("C      C")
        print (" C C C")
        print (" ")
        print ("W     W") //Prints a W
        print ("W     W")
        print ("W  W  W")
        print ("W  W  W")
        print (" W  W")

        for _ in 1...countdownrepeatnum {
            countdown = countdown - 1
            print("Immabout to repeat this thing a billion times! you have = \(countdown)")
        }

        for _ in 1...initialrepeatnum{
            print ("B B B")  //The following lines print out a visual "B" shape out of B's
            print ("B     B")
            print ("B B B B")
            print ("B      B")
            print ("B B B B")
            print (" ")  //Puts a space in the lines
            print (" C C C") //Prints out a C
            print ("C")
            print ("C")
            print ("C      C")
            print (" C C C")
            print (" ")
            print ("W     W") //Prints a W
            print ("W     W")
            print ("W  W  W")
            print ("W  W  W")
            print (" W  W")
            print ("Enter An Adjective...")
            let adjective1 = readLine()!

            print ("Enter A Noun...")
            let noun1 = readLine()!

            print ("Enter Another Noun...")
            let noun2 = readLine()!

            print ("Enter A Verb...")
            let verb1 = readLine()!

            print("Enter Another Verb...")
            let verb2 = readLine()!

            print("Enter Yet Another Noun...")
            let noun3 = readLine()!

            print("Just one more Adjective...")
            let adjective2 = readLine()!

            print("Actually, One more would be good...")
            let adjective3 = readLine()!

            print("And a proper noun, if you can!")
            let properNoun1 = readLine()!

            let madLibString = "When the sun did not rise on the \(adjective1) town of \(noun1), The \(adjective2) \(noun2) Rung the bell of \(noun3) to alert the \(adjective1) \(noun2). As \(adjective3) spread among the \(noun2). But then, when all seemed lost, \(properNoun1) \(verb1) from their endless slumber to end the \(adjective3) and bring peace to the \(adjective1) \(noun2) by \(verb2)."

            print(madLibString)
        }

    }
}
