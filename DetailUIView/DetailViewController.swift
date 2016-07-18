//
//  DetailViewController.swift
//  DetailUIView
//
//  Created by kvanaMini1 on 19/05/16.
//  Copyright © 2016 kvanaMini1. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        
        return 80;
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier = "Cell"
        var cell: DetailTableViewCell! = tableView.dequeueReusableCellWithIdentifier(identifier) as? DetailTableViewCell
        if cell == nil {
            tableView.registerNib(UINib(nibName: "DetailTableViewCell", bundle: nil), forCellReuseIdentifier: identifier)
            cell = tableView.dequeueReusableCellWithIdentifier(identifier) as? DetailTableViewCell
            
        }
        
        
        
        return cell
        
    }

}
