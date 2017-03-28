//
//  TableViewController.swift
//  lottie
//
//  Created by Alex on 3/27/17.
//  Copyright © 2017 alex. All rights reserved.
//

import UIKit
import Lottie

class TableViewController: UITableViewController {
    let animationIcons = ["champion","bar-chat","calendar","chat","chart","creditcard","contacts"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 90
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return animationIcons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MenuCell
        cell.animationName = animationIcons[indexPath.row]
       
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let cell = tableView.cellForRow(at: indexPath) as! MenuCell
        cell.AnimationView.play()
         performSegue(withIdentifier: "test", sender: nil)
        
    }
  }
