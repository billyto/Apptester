//
//  ViewController.swift
//  Apptester
//
//  Created by Billy Tobon on 6/17/15.
//  Copyright © 2015 Squid vs Robot Inc. All rights reserved.
//

import UIKit
import AFNetworking
import OHHTTPStubs

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        OHHTTPStubs.stubRequestsPassingTest({$0.URL!.host == "api.github.com"}) { _ in
//            // Stub it with our "wsresponse.json" stub file (which is in same bundle as self)
//            let fixture = OHPathForFile("wsresponse.json", self.dynamicType)
//            return OHHTTPStubsResponse(fileAtPath: fixture!,
//                statusCode: 200, headers: ["Content-Type":"application/json"])
//        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var aButton: UIButton!
    @IBAction func doSomething(sender: AnyObject) {
        
    
    aButton.setTitle("looking Up...", forState: .Normal)
        
        
        
    let manager = AFHTTPRequestOperationManager()
    manager.GET(
            "https://api.github.com/users/billyto/repos",
            parameters: nil,
            success: { (operation: AFHTTPRequestOperation!,
                responseObject: AnyObject!) in
                print("JSON: " + responseObject.description)
                 self.aButton.setTitle("Success!", forState: .Normal)
                
            },
            failure: { (operation: AFHTTPRequestOperation!,
                error: NSError!) in
                print("Error: " + error.localizedDescription)
                self.aButton.setTitle("Error!", forState: .Normal)

            }
        )
        
        
    }

}

