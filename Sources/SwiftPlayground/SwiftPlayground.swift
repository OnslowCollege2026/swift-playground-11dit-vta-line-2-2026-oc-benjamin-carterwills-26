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
            "Tieke",
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
            print("Would you like to mark a (B)IRD or (I)NSECT? (Q to Quit)")
            let birdOrInsect: String = readLine()!

            if birdOrInsect.lowercased() == "b"{
                birds.enumerated().forEach { index, bird in
                    print("\(index + 1) \(bird)")
                }
                print ("Which of these Birds did you see?")
                var birdAppending = true
                while birdAppending == true{
                    if let userInput = readLine(), let birdIndex = Int(userInput), birdIndex >= 1 && birdIndex <= 7{
                    print("\(birds[birdIndex - 1]) Added.")
                    selectedBirds.append(birds[birdIndex - 1])
                    birdAppending = false
                    }
                    else{
                        print("Please enter a valid integer from 1-7, corresponding with your target bird.")
                    }
                }
            } else if birdOrInsect.lowercased() == "i"{
                insects.enumerated().forEach { index, insect in
                    print("\(index + 1) \(insect)")
                }
                print ("Which of these Insects did you see?")
                var insectAppending = true
                while insectAppending == true{
                    if let userInput = readLine(), let insectIndex = Int(userInput), insectIndex >= 1 && insectIndex <= 7{
                    print("\(insects[insectIndex - 1]) Added.")
                    selectedInsects.append(insects[insectIndex - 1])
                    insectAppending = false
                    }
                    else{
                        print("Please enter a valid number from 1-7, corresponding with your target bird.")
                    }
                }
            } else if birdOrInsect.lowercased() == "q"{
                running = false
            }        
            else{
                print ("Please enter a valid input of (B for Birds), (I for Insects), or (Q to Quit)")
            }
        }

        print("During your trip to Zealandia, you have observed:")
        let birdTallies = selectedBirds.reduce(into: [:]) { counts, bird in
            counts[bird, default: 0] += 1
        }
        print (birdTallies)
        print("And as well as:")
        let insectTallies = selectedInsects.reduce(into: [:]) { counts, insect in
            counts[insect, default: 0] += 1
        }
        print (insectTallies)
        print("Please Come Again!")
            
        }


}