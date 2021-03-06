//
//  ViewController.swift
//  DetailUIView
//
//  Created by kvanaMini1 on 19/05/16.
//  Copyright © 2016 kvanaMini1. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

     @IBOutlet weak var tableView: UITableView!
    
    
    var image: [String] = ["mood_intelligent", "smaill_time", "favorite_notLiked", "deselect_tab_location"]
    
    var label: [String] = ["ShakeSphere at that state Spend four weekends", "West Valley College", "May 13, 12pm"]
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        
        return 60;
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier = "Cell1"
        var cell: DetailTableViewCell! = tableView.dequeueReusableCellWithIdentifier(identifier) as? DetailTableViewCell
        if cell == nil {
            tableView.registerNib(UINib(nibName: "DetailTableViewCell", bundle: nil), forCellReuseIdentifier: identifier)
            cell = tableView.dequeueReusableCellWithIdentifier(identifier) as? DetailTableViewCell
            
        }
        let imagename = image[indexPath.row]
        cell.imageView?.image = UIImage(named: imagename)
        cell.textLabel!.text = label[indexPath.row]
        return cell
    
    }
}

