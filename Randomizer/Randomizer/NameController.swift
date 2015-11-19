//
//  NameController.swift
//  Randomizer
//
//  Created by Andrew Porter on 11/18/15.
//  Copyright © 2015 Andrew Porter. All rights reserved.
//

import Foundation

class NameController {
    
    static let sharedController = NameController()
    
    var namesArray: [String]
    
    init() {
        
        self.namesArray = ["Andrew","Libby","Porter","Andy","Paul","Scott","Jami","Nancy","Miles","Steve","Dave"]
    }
    
    func addName(name: String) {
        
        namesArray.append(name)
        print(namesArray)
    }
    
    func removeName(name: String) {
        
        if let nameIndex = namesArray.indexOf(name) {
            
            namesArray.removeAtIndex(nameIndex)
            print(namesArray)
        }
    }
    
    func pairMe(array: [String]) -> [String:String] {
        
        var updatedArray = namesArray
        var pairsDict: [String:String] = [ : ]
        
        if namesArray.count >= 2 {
            
            for _ in updatedArray {
                
                var randIndex = Int(arc4random_uniform(UInt32(updatedArray.count)))
                let name1 = updatedArray[randIndex]
                
                updatedArray.removeAtIndex(randIndex)
                
                randIndex = Int(arc4random_uniform(UInt32(updatedArray.count)))
                let name2 = updatedArray[randIndex]
                
                updatedArray.removeAtIndex(randIndex)
                
                pairsDict[name1] = name2
                
                if updatedArray.count == 1 {
                    // Add alert to handle error
                    print("\(updatedArray[0]) will need to make a threesome.")
                    
                    break
                    
                } else if updatedArray.count == 0 {
                    // Add alert to handle error
                    
                    break
                    
                }
            }
        } else {
            // Add alert to handle error
        }
        
        
        
        return pairsDict
    }
}

//"Andrew","Libby","Porter","Andy","Paul","Scott","Jami","Nancy","Miles","Steve","Dave"