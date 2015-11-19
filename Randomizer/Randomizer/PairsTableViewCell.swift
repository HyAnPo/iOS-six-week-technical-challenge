//
//  PairsTableViewCell.swift
//  Randomizer
//
//  Created by Andrew Porter on 11/19/15.
//  Copyright © 2015 Andrew Porter. All rights reserved.
//

import UIKit

class PairsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var firstPairLabel: UILabel!
    @IBOutlet weak var secondPairLabel: UILabel!
    
    func updateWithNames(name1: String, name2: String) {
        
        self.firstPairLabel.text = name1
        self.secondPairLabel.text = name2
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
