//
//  ChallengesTableViewController.swift
//  fitchain
//
//  Created by Anton McConville on 2017-05-04.
//  Copyright © 2017 Anton McConville. All rights reserved.
//

import UIKit
import HealthKit


class ChallengesTableViewController: UITableViewController {
    
    @IBOutlet weak var table: UITableView!
    
    var challenges = Array<Challenge>();
    
    let healthKitStore:HKHealthStore = HKHealthStore()
    
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
        
        let rightButtonItem = UIBarButtonItem.init(
            title: "Add",
            style: .done,
            target: self,
            action: #selector(self.rightButtonAction)
        )
        
        self.navigationItem.rightBarButtonItem = rightButtonItem
        
        
        self.buildTestData()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    func buildTestData(){
        
        var dateComponents = DateComponents()
        
        dateComponents.year = 2017
        dateComponents.month = 4
        dateComponents.day = 0
        dateComponents.timeZone = TimeZone(abbreviation: "EST")
        dateComponents.hour = 12
        dateComponents.minute = 0
        
        let userCalendar = Calendar.current // user calendar

        // - - - - - - -
        
        let startBTW = userCalendar.date(from: dateComponents)

        dateComponents.day = 30
        
        let endBTW = userCalendar.date(from: dateComponents)
        
        // - - - - - - -
        
        var bikeToWork = Challenge();
        
        bikeToWork.title = "Bike To Work";
        bikeToWork.start = startBTW;
        bikeToWork.end = endBTW;
        bikeToWork.image = "bike.png"
        bikeToWork.unit = "Days"
        bikeToWork.activity = "CYCLING"
        
        // - - - - - - -
        
        dateComponents.day = 1
        dateComponents.month = 0

        
        let startFFW = userCalendar.date(from: dateComponents)
        
        dateComponents.day = 11
        dateComponents.month = 30

        
        let endFFW = userCalendar.date(from: dateComponents)
        
        // - - - - - - -
        
        var fitForWork = Challenge();
        
        fitForWork.title = "Fit For Work";
        fitForWork.start = startFFW;
        fitForWork.end = endFFW;
        fitForWork.image = "skip.png"
        fitForWork.unit = "Days"
        fitForWork.activity = "ANY"
        
        // - - - - - - -
        
        challenges.append(bikeToWork)
        challenges.append(fitForWork)
        
        print("built test data")
        
        print ("---------------")
        
        print(challenges);
    }
    
    
    func rightButtonAction(sender: UIBarButtonItem){
        performSegue(withIdentifier: "marketsegue", sender: self)
        print("pressed button")
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
        return self.challenges.count;
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "challengeCell", for: indexPath)as! ChallengeTableViewCell

        let rowdata = self.challenges[indexPath.row];
        cell.titleLabel.text = rowdata.title
//        cell.hotelLabel.textColor = UIColor(white: 114/255, alpha: 1)
//        
        let rowicon = rowdata.image;
        cell.challengeIcon.image = UIImage(named:rowicon);
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
