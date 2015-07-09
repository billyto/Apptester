//
//  AppDelegateExtension.swift
//  Apptester
//
//  Created by Billy Tobon on 7/8/15.
//  Copyright © 2015 Squid vs Robot Inc. All rights reserved.
//


import OHHTTPStubs
extension AppDelegate {

    func hola() {
    
        OHHTTPStubs.stubRequestsPassingTest({$0.URL!.host == "api.github.com"}) { _ in
            // Stub it with our "wsresponse.json" stub file (which is in same bundle as self)
            let fixture = OHPathForFile("wsresponse.json", self.dynamicType)
            return OHHTTPStubsResponse(fileAtPath: fixture!,
                statusCode: 200, headers: ["Content-Type":"application/json"])
        }
    
    }

}
