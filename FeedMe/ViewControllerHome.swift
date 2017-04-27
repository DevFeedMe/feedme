//
//  ViewControllerHome.swift
//  FeedMe
//
//  Created by MacMini on 27/04/2017.
//  Copyright © 2017 TekUp. All rights reserved.
//

import UIKit

class ViewControllerHome: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    var foods:[Food] = [
        Food(type:"pizza", image:"pizza_logo.png"),
        Food(type:"sandwich", image:"sandwich_logo.png"),
        Food(type:"Plat", image:"plat_logo.png")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cel1"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath as IndexPath)
        // Configure the cell...
        cell.textLabel?.text = foods[indexPath.row].type
        cell.imageView?.image = UIImage(named: foods[indexPath.row].image)
        return cell
    }

}
