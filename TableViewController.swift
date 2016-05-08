//
//  TableViewController.swift
//  CV
//
//  Created by Илья Пупкин on 5/7/16.
//  Copyright © 2016 Илья Горевой. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    //MARK: Properties

    var unis = [Uni?]()
    var selectedRowIndex: NSIndexPath = NSIndexPath(forRow: -1, inSection: 0)
    var selectedIndexPath: NSIndexPath? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        loadUnis()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return unis.count
    }

    
    //MARK: Custom Cell
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "CVViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! CVViewCell
        
        let uni = unis[indexPath.row]
        
        cell.uniName.text = uni?.name
        cell.photoUni.image = uni?.photoUni
        cell.yearU1.text = uni!.year1
        cell.yearU2.text = uni!.year2
        cell.descr.text = uni!.descr
        cell.backgroundColor = UIColor.darkGrayColor()
        cell.uniName.textColor = UIColor.whiteColor()
        cell.yearU1.textColor = UIColor.whiteColor()
        cell.yearU2.textColor = UIColor.whiteColor()
        cell.descr.backgroundColor = UIColor.darkGrayColor()
        cell.descr.textColor = UIColor.whiteColor()

        return cell
    }
    
    
    //MARK: Expand Cell
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("didSelectRowAtIndexPath was called")
        switch selectedIndexPath {
        case nil:
            selectedIndexPath = indexPath
        default:
            if selectedIndexPath! == indexPath {
                selectedIndexPath = nil
            } else {
                selectedIndexPath = indexPath
            }
        }
        tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        let smallHeight: CGFloat = 90.0
        let expandedHeight: CGFloat = 180.0
        let ip = indexPath
        if selectedIndexPath != nil {
            if ip == selectedIndexPath! {
                return expandedHeight
            } else {
                return smallHeight
            }
        } else {
            return smallHeight
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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
    
    //MARK: Cells
    
    func loadUnis() {
        let photoKNURE = UIImage(named: "knure")
        let knureDescr = "Studied micro-, nanoelectronics at Electronics Faculty"
        let uniKNURE = Uni(name: "Kharkiv National University of RadioElectronics", photo: photoKNURE, year1: "2010", year2: "2012", descr: knureDescr)
        
        let hitDescr = "Studied nanomaterials at Materials Design Faculty"
        let photoHIT = UIImage(named: "hit")
        let uniHIT = Uni(name: "Harbin Institute of Technology \n 2013-2014 Chinese language intensive courses", photo: photoHIT, year1: "2012", year2: "2014", descr: hitDescr)
        
        let kpiDescr = "Study automation of technical systems \nCourses at PortaOne with Linux, Networks, System administrating"
        let photoKPI = UIImage(named: "kpi")
        let uniKPI = Uni(name: "Kiev Polytechnic University", photo: photoKPI, year1: "2014", year2: "2017", descr: kpiDescr)
        
        unis += [uniKNURE, uniHIT, uniKPI]
        
    }

    
    // MARK: - Navigation
    
    @IBAction func doneButton(sender: UIBarButtonItem) {
       dismissViewControllerAnimated(true, completion: nil)
    }
    /*
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        segue.destinationViewController
    }*/
 

}
