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
 
    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request(.GET, "https://xecdapi.xe.com/v1/account_info/",encoding: .JSON)
            .authenticate(user: "hackthenorth053", password: "Waterloo2890")
            .responseJSON { response in
                print(response.request)  // original URL request
                print(response.response) // HTTP URL response
                print(response.data)     // server data
                print(response.result)
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }// result of response serialization
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

