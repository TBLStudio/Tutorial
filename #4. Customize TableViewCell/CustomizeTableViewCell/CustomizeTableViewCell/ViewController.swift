//
//  ViewController.swift
//  CustomizeTableViewCell
//
//  Created by Thái Bô Lão on 11/6/15.
//  Copyright © 2015 TBLStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: CustomCell = tableView.dequeueReusableCellWithIdentifier("cell") as! CustomCell
        
        cell.lblTitle.text = "Title \(indexPath.row)"
        cell.lblDetail.text = "Detail \(indexPath.row)"
        
        return cell
        
    }


}

