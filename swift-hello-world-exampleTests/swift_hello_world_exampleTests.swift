//
//  swift_hello_world_exampleTests.swift
//  swift-hello-world-exampleTests
//
//  Created by Mubae Wakasugi on 2014/08/18.
//  Copyright (c) 2014年 STILLILL. All rights reserved.
//

import UIKit
import XCTest

class swift_hello_world_exampleTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
