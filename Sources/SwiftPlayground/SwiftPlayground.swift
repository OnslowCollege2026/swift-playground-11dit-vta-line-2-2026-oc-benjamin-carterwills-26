// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
//Input = User defining wether they are entering a bird or insect, and then the name of said insect.
//Process = Stores the users entered birds and insects in an array, where each of the same is stacked
//Iteration = Repeat until the user types N to say they are done.
//Output = List of Birds and Insects, with a count of each.


struct SwiftPlayground {
    static func main() {
        //Title
        print("Welcome to the ZAT (Zelandia Animal Tracker)")
        //Boolean expression which is used to say wether or not the program should continue running and looping or not
        var running: Bool = true
        //Array for all of the possible birds
        let birds: [String]  = [
            "Kākā",
            "Takahē",
            "Hihi",
            "Kiwi",
            "Pāteke",
            "Tūī",
            "Kererū",
        ]
        //Array for all of the possible insectss
        let insects: [String] = [
            "Giant Wētā",
            "Tree Wētā",
            "Cave Wētā",
            "Putoko",
            "Pūngāwerewere",
            "Ngaokeoke",
            "Waemano",
            "Kapowai",

        ]

        var selectedBirds: [String] = []
        var selectedInsects: [String] = []



        while running{
            print("Would you like to mark a (B)IRD or (I)NSECT?")
            let birdOrInsect: String = readLine()!

            if birdOrInsect.lowercased() == "b"{
                birds.enumerated().forEach { index, bird in
                    print("\(index + 1) \(bird)")
                }
                print ("Which of these Birds did you see?")
                birdSelect()
            } else if birdOrInsect.lowercased() == "i"{
                insects.enumerated().forEach { index, insect in
                    print("\(index + 1) \(insect)")
                }
                print ("Which of these Insects did you see?")
                insectSelect()
            } else{
                print ("Please enter a valid input of either (B for Birds) or (I for Insects)")
            }
        }

        func Select(array: Int) {
            var selectedArray: [String] = []
            switch array{
                case 1: let selectedArray = birds
                case 2: let selectedArray = insects
                default: print("Error: Selected Array does not exist!")
            }
            let birdInputtedIndex = readLine()!
            let index = Int(birdInputtedIndex)
            var objectAppending: Bool = true
            while objectAppending == true{
                switch index{
                    case 1: selectedBirds.append(selectedArray[0]); print("You have added a \(selectedArray{0})") ; objectAppending = false
                    case 2: selectedBirds.append(birds[1]); objectAppending = false
                    case 3: selectedBirds.append(birds[2]); objectAppending = false
                    case 4: selectedBirds.append(birds[3]); objectAppending = false
                    case 5: selectedBirds.append(birds[4]); objectAppending = false
                    case 6: selectedBirds.append(birds[5]); objectAppending = false
                    case 7: selectedBirds.append(birds[6]); objectAppending = false
                    case 8: selectedBirds.append(birds[7]); objectAppending = false
                    default: print("Please enter a valid number between 1 and 8.")
                }
            }
            
        }

        func insectSelect(){
            
        }


    }

}