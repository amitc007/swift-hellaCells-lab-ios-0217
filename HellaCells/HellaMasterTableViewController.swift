//
//  HellaMasterTableViewController.swift
//  HellaCells
//
//  Created by Flatiron School on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaMasterTableViewController:UITableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HellMasterCell", for: indexPath)
        
        cell.textLabel?.text = String(indexPath.row+1)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tappedCell = sender as! UITableViewCell   //get the cell
        let destVC = segue.destination as! HellaDetailViewController  //get the destination VC
        destVC.text = tappedCell.textLabel?.text
    }
    
    
}




/*class ViewController: UIViewController {
 
 override func viewDidLoad() {
 super.viewDidLoad()
 // Do any additional setup after loading the view, typically from a nib.
 }
 
 override func didReceiveMemoryWarning() {
 super.didReceiveMemoryWarning()
 // Dispose of any resources that can be recreated.
 }
 
 
 }*/

