//
//  ViewController.swift
//  Challenge Table Views
//
//  Created by Emily Baker-King on 10/12/18.
//  Copyright © 2018 Emily Baker-King. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    let dogs: [Dog] = [Dog(name: "Boston Terrier", picture: UIImage(named: "bostonTerrier")!), Dog(name: "German Shepherd", picture: UIImage(named: "germanShepherd")!), Dog(name: "Bulldog", picture: UIImage(named: "bulldog")!), Dog(name: "Poodle", picture: UIImage(named: "poodle")!), Dog(name: "Chihuahua", picture: UIImage(named: "chihuahua")!), Dog(name: "Husky", picture: UIImage(named: "husky")!), Dog(name: "Beagle", picture: UIImage(named: "beagle")!), Dog(name: "Australian Shepherd", picture: UIImage(named: "australianShepherd")!), Dog(name: "Great Dane", picture: UIImage(named: "greatDane")!), Dog(name: "Bullmastiff", picture: UIImage(named: "bullmastiff")!), Dog(name: "Yorkie", picture: UIImage(named: "yorkie")!)]
    
    //This is where we tell the table view how many cells we will have in a given section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dogs.count
    }
    
    //This is where we configure the cells for the table view
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? CustomTableViewCell {
            cell.titleLabel.text = dogs[indexPath.row].name
            cell.imageView!.image = dogs[indexPath.row].picture
            return cell
        } else {
            return UITableViewCell()
        }
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

