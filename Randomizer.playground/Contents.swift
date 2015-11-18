//: Playground - noun: a place where people can play

import UIKit

func randomIndex(range: Int) {
    let randomNumber: Int = Int(arc4random_uniform(UInt32(range + 1)))
    
    print("\(randomNumber)")
    
}

func randomizer(nameArray: [String]) -> [String:String] {
    
    // Array minus the already used names
    var updatedArray = nameArray
    
    // A dictionary to hold the pairs
    var pairsDict: [String:String] = [ : ]
    
    // check to see if the array of names is more than 3
    // If it is less than 3 "Can't assign pairs less than 3"
    // iterate through the updatedArray and pick two random names
    // if the two random names are the same pick a new random name until they are different
    // remove the used names from the array
 
    
    
    return pairsDict
}


