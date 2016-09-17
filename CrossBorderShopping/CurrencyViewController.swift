//
//  CurrencyViewController.swift
//  CrossBorderShopping
//
//  Created by Harsh Bindra on 2016-09-17.
//  Copyright © 2016 Harsh Bindra. All rights reserved.
//

import UIKit
var cadTotal : Double = 0.0
var usdTotal : Double = 0.0

class CurrencyViewController: UIViewController {

    @IBAction func CAD(sender: AnyObject) {
    
    openTotal()
    }
    
    @IBAction func USD(sender: AnyObject) {
        
    openTotal()
    }
    
    @IBAction func CADUSD(sender: AnyObject) {
        
    openTotal()
    }
    
    func openTotal(){
        self.performSegueWithIdentifier("PushToTotal", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        APIManager.sharedInstance.deleteThisFunctionAsWell()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
