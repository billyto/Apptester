//
//  ApptesterUITests.swift
//  ApptesterUITests
//
//  Created by Billy Tobon on 6/17/15.
//  Copyright © 2015 Squid vs Robot Inc. All rights reserved.
//

import Foundation
import XCTest
import OHHTTPStubs

class ApptesterUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        OHHTTPStubs.stubRequestsPassingTest({$0.URL!.host == "api.github.com"}) { _ in
            // Stub it with our "wsresponse.json" stub file (which is in same bundle as self)
            let fixture = OHPathForFile("wsresponse.json", self.dynamicType)
            return OHHTTPStubsResponse(fileAtPath: fixture!,
                statusCode: 200, headers: ["Content-Type":"application/json"])
        }
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let app = XCUIApplication()
        let tapMehButton = app.buttons["Tap  meh!"]
        tapMehButton.tap()
  
        

        
    }
    
}
