//
//  NamesTableViewController.swift
//  Randomizer
//
//  Created by Andrew Porter on 11/18/15.
//  Copyright © 2015 Andrew Porter. All rights reserved.
//

import UIKit

class NamesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NameController.sharedController.namesArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("nameCell", forIndexPath: indexPath)
        
        let name = NameController.sharedController.namesArray[indexPath.row]
        
        cell.textLabel?.text = name

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            
            let name = NameController.sharedController.namesArray[indexPath.row]
            
            NameController.sharedController.removeName(name)
            
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "showPairs" {
            
            if let pairsTableViewController = segue.destinationViewController as? PairsTableViewController {
                
                _ = pairsTableViewController.view
            }
        }
    }
    
    //MARK: - AlertControllers
    
    func setUpAlertController() {
        
        let alert = UIAlertController(title: "Add Name", message: nil, preferredStyle: .Alert)
        
        alert.addTextFieldWithConfigurationHandler { (nameField) -> Void in
            nameField.placeholder = "Add Name"
        }
        
        alert.addAction(UIAlertAction(title: "Save", style: .Default, handler: { (action) -> Void in
            
            if let textFields = alert.textFields,
                let name = textFields[0].text {
                    print(name)
                    NameController.sharedController.addName(name)
                    self.tableView.reloadData()
            }
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
        
        presentViewController(alert, animated: true, completion: nil)
    }
    
    //MARK: - Buttons
    
    @IBAction func clearButtonTapped(sender: UIBarButtonItem) {
        NameController.sharedController.clearNames()
        tableView.reloadData()
    }
    
    @IBAction func addButtonTapped(sender: UIBarButtonItem) {
        setUpAlertController()
    }
    
    @IBAction func pairMeButtonTapped(sender: UIButton) {
        NameController.sharedController.pairMe(NameController.sharedController.namesArray)
        print(NameController.sharedController.namesArray)
        print(NameController.sharedController.pairsDict)
    }

}
