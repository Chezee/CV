//
//  MainMenuTableViewController.swift
//  CV
//
//  Created by Илья Пупкин on 5/7/16.
//  Copyright © 2016 Илья Горевой. All rights reserved.
//

import UIKit

class MainMenuTableViewController: UITableViewController {
    //MARK: Properties
    var baseCells = [Base]()
    
    func loadBaseCell() {
        let imageInfo = UIImage(named: "baseInfo")
        let baseInfo = Base(name: "baseInfo", backgroundImage: imageInfo!)
        
        let imageUni = UIImage(named: "studyInfo")
        let baseUni = Base(name: "baseUni", backgroundImage: imageUni!)
        
        let imageJob = UIImage(named: "jobInfo")
        let baseJob = Base(name: "baseJob", backgroundImage: imageJob!)
        
        baseCells += [baseInfo, baseUni, baseJob]
    }
    
    //MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadBaseCell()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    //MARK: Cell
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        if indexPath.row == 0 {
            let cellIndentifier = "MainMenuCell"
            let cell = tableView.dequeueReusableCellWithIdentifier(cellIndentifier, forIndexPath: indexPath) as! MainMenuCell
            
            let cells = baseCells[indexPath.row]
            
            cell.baseImage.image = cells.backgroundImage
            return cell
        }
        if indexPath.row == 1 {
            let cellIndentifier = "StudyCell"
            let cell = tableView.dequeueReusableCellWithIdentifier(cellIndentifier, forIndexPath: indexPath) as! MainMenuCell
            
            let cells = baseCells[1]
            
            cell.baseImage.image = cells.backgroundImage
            return cell
        }
        else {
            let cellIdentifier = "JobCell"
            let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! MainMenuCell
            let cells = baseCells[2]
            cell.baseImage.image = cells.backgroundImage
            return cell
        }
    }
    
    //MARK: Action
    
}