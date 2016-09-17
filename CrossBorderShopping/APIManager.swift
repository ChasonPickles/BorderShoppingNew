//
//  APIManager.swift
//  CrossBorderShopping
//
//  Created by Harsh Bindra on 2016-09-17.
//  Copyright © 2016 Harsh Bindra. All rights reserved.
//
import Alamofire
var returnVAL : Double = 0.0
class APIManager {
    static let sharedInstance = APIManager()
    
    
    func deleteThisFunctionAfter(){
        
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
    
    func xeCurrencyConvert(from: String, to: String, amount: Double) -> Double {
        
        var api2: String = "https://xecdapi.xe.com/v1/convert_to.json/"
        var returnVal : Double = 0.0
        let params : [String: AnyObject] =
            [
                "to": from,
                "from": to,
                "amount": amount
        ]
        
        Alamofire.request(.GET, api2,parameters: params)
            .authenticate(user: "hackthenorth053", password: "Waterloo2890")
            .responseJSON { response in
                //print(response.request)  // original URL request
                ///print(response.response) // HTTP URL response
                //print(response.data)     // server data
                //print(response.result)
                if let JSON = response.result.value {
                    //print("JSON: \(JSON)")
                    
                    let weather = JSON["from"] as! [[String : AnyObject]]
                    var out = (weather[0]["mid"])
                    
                    if let output = out?.doubleValue {
                      print(output)
                       returnVal = output
                    }else{
                       // error
                    }
                
                    
                    
                }
                
                
        }// result of response serialization
        
       return returnVal
        
    }
    
    
    
    func deleteThisFunctionAsWell(){
        var api: String = "https://xecdapi.xe.com/v1/convert_to.json/?to=USD&from=CAD&amount=1000.00"
        var api2: String = "https://xecdapi.xe.com/v1/convert_to.json/"
        
        let params : [String: String] =
            [
                "to": "USD",
                "from": "CAD",
                "amount": "1000.00"
        ]
        
        print(params)
        
        
        Alamofire.request(.GET, api2,parameters: params)
            .authenticate(user: "hackthenorth053", password: "Waterloo2890")
            .responseJSON { response in
                print(response.request)  // original URL request
                print(response.response) // HTTP URL response
                print(response.data)     // server data
                print(response.result)
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                    
                    let weather = JSON["from"] as! [[String : AnyObject]]
                   var out = (weather[0]["mid"])
                    
                    if let output = out?.doubleValue {
                        
                        print(output)
                    }
                  
                    
                   
                }
                
                
        }// result of response serialization
        
    }
    
    
    
}