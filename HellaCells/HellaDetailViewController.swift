//
//  HellaDetailViewController.swift
//  HellaCells
//
//  Created by ac on 2/14/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

//import Foundation
import UIKit

class HellaDetailViewController:UIViewController {
    
    var text: String!
    
    @IBOutlet weak var textMsg: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textMsg.adjustsFontSizeToFitWidth = true
        textMsg.text = text
    }
    
}
