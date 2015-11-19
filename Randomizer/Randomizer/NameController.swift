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
        }
    }
}