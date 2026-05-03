// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        print ("Enter Your Score (0-100)")
        let UserScore = Int(readLine()!)!

        if UserScore >= 90 && UserScore <= 100{
            print("Your Grade: A+")
            print("Outstanding performance!")
        }
        else if UserScore <= 89 && UserScore >= 85{
            print("Your Grade: A")
            print("Excellent Performance")
        }
        else if UserScore <= 89 && UserScore >= 85{
            print("Your Grade: A-")
            print("Excellent Performance in most respects")
        }
        else if UserScore <= 84 && UserScore >= 80{
            print("Your Grade: B+")
            print("Very good performance")
        }
        else if UserScore <= 79 && UserScore >= 75{
            print("Your Grade: B")
            print("Good performance")
        }
        else if UserScore <= 74 && UserScore >= 70{
            print("Your Grade: B-")
            print("Good performance overall, but some weakness")
        }
        else if UserScore <= 69 && UserScore >= 65{
            print("Your Grade: C+")
            print("Satisfactory to good performance")
        }
        else if UserScore <= 64 && UserScore >= 60{
            print("Your Grade: C")
            print("Satisfactory performance")
        }
        else if UserScore <= 59 && UserScore >= 55{
            print("Your Grade: C-")
            print("Adequate evidence of learning")
        }
        else if UserScore <= 54 && UserScore >= 0{
            print("Your Grade: D")
            print("Unfortunatly, you have failed!")
        }
        else {
            print("This value is invalid! Please enter a valid intiger (0-100)")
            
        }





    }
}
