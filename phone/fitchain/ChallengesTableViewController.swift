//
//  ChallengesTableViewController.swift
//  fitchain
//
//  Created by Anton McConville on 2017-05-04.
//  Copyright © 2017 Anton McConville. All rights reserved.
//

import UIKit

class ChallengesTableViewController: UITableViewController {
    
    @IBOutlet weak var table: UITableView!
    
    var items = ["Apple", "Orange", "Pear"]
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.dataSource = self
        
        let dark = UIColor(red:0.14, green:0.14, blue:0.17, alpha:1.0)
        navigationController!.navigationBar.barTintColor = dark;
        navigationController!.navigationBar.tintColor = UIColor.white;
        tabBarController!.tabBar.barTintColor = dark;
        tabBarController!.tabBar.tintColor = UIColor.white;

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.items.count;
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "challengeCell", for: indexPath)
//        let rowdata = self.items[indexPath.row];
//        cell.hotelLabel.text = rowdata["hotel"] as? String;
//        cell.hotelLabel.textColor = UIColor(white: 114/255, alpha: 1)
//        
//        let rowicon = rowdata["icon"] as? String;
//        cell.hotelIcon.image = UIImage(named:rowicon!);
//        
//        
//        let start = rowdata["start"] as? String;
//        
//        var index = start?.index((start?.startIndex)!, offsetBy: 10)
//        let begin = start?.substring(to: index!)
//        
//        cell.beginLabel.text = begin;
//        
//        
//        
//        let stop = rowdata["end"] as? String;
//        
//        index = stop?.index((stop?.startIndex)!, offsetBy: 10)
//        let end = stop?.substring(to: index!)
//        
//        cell.endLabel.text = end;
        
        
        return cell
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
