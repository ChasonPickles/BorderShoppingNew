//
//  ViewController.swift
//  CrossBorderShopping
//
//  Created by Harsh Bindra on 2016-09-17.
//  Copyright © 2016 Harsh Bindra. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
 
    @IBAction func CAN(sender: AnyObject) {
        
    locationResponse = "CAD"
        openProductView()
    }
    @IBAction func USA(sender: AnyObject) {
        
        locationResponse = "USD"
        openProductView()
        
    }
    func openProductView(){
        self.performSegueWithIdentifier("PushToProduct", sender: self)
        
    }
    @IBOutlet weak var USA: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

