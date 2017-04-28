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
        Food(type:"Plat", image:"plat_logo.png"),
        Food(type:"Fish", image:"fish_logo.png"),
        Food(type:"soup", image:"soup_logo.png"),
        Food(type:"Hamburger", image:"hamburger_logo.png"),
        Food(type:"Meat", image:"meat_logo.png"),
        Food(type:"Cake", image:"cake_logo.png"),
        Food(type:"Alcohol", image:"alcohol_logo.png"),
        Food(type:"Juice", image:"juice_logo.png"),
        Food(type:"Coffee", image:"coffee_logo.png")
    ]

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
            return foods.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:IndexPath) -> UITableViewCell
    {
        let cellIdentifier = "Cel1"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath as IndexPath)
        
        cell.textLabel?.text = foods[indexPath.row].type
        cell.imageView?.image = UIImage(named: foods[indexPath.row].image)
        return cell
    }

}
