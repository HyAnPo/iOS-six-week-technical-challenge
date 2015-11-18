//: Playground - noun: a place where people can play

import UIKit

// For some reason this wasn't giving me random numbers
//func randomIndex(range: Int) {
//    let randomNumber: Int = Int(arc4random_uniform(UInt32(range)))
//    
//    print("\(randomNumber)")
//    
//}

func randomizer(nameArray: [String]) -> [String:String] {
    
    // Array minus the already used names
    var updatedArray = nameArray
    print(updatedArray.count)
    
    // A dictionary to hold the pairs
    var pairsDict: [String:String] = [ : ]
    
    // check to see if the array of names is more than 3
    // check to see if the array is even
    // check to see if the array is odd
    // iterate through the updatedArray and pick one randome name
    // remove that name from the array
    // pick next random name
    // remove that name from array
        
    if updatedArray.count % 2 == 0 {
        print("even number")
        
        for _ in updatedArray {
    
            var randIndex = Int(arc4random_uniform(UInt32(updatedArray.count)))
            let name1 = updatedArray[randIndex]
            print(name1)
            updatedArray.removeAtIndex(randIndex)
            print(updatedArray.count)
            
            randIndex = Int(arc4random_uniform(UInt32(updatedArray.count)))
            let name2 = updatedArray[randIndex]
            print(name2)
            updatedArray.removeAtIndex(randIndex)
            print(updatedArray.count)
            
            pairsDict[name1] = name2
            if updatedArray.count == 0 {
                break
            }
        }
        
    }
    
    if updatedArray.count % 3 == 0 {
        print("odd number")
        
        if updatedArray.count > 1 {
            
            for _ in updatedArray {
                
                var randIndex = Int(arc4random_uniform(UInt32(updatedArray.count)))
                let name1 = updatedArray[randIndex]
                updatedArray.removeAtIndex(randIndex)
                print(updatedArray.count)
                
                randIndex = Int(arc4random_uniform(UInt32(updatedArray.count)))
                let name2 = updatedArray[randIndex]
                updatedArray.removeAtIndex(randIndex)
                print(updatedArray.count)
                
                pairsDict[name1] = name2
                if updatedArray.count == 0 {
                    break
                }
            }

        } else {
            
            print("\(updatedArray[0]) will have to join a pair to make a threesome")
            
        }
    }
    
    print("I made it here")
    return pairsDict
}


randomizer(["Andrew","Porter","Libby","Hyrum","Ty","Mike","Cory","Andy","Scott","Miles","greg"])












