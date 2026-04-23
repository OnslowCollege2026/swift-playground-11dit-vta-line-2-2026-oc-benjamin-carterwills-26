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
        }

    }
}
