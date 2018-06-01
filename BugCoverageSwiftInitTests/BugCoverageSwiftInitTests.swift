//
//  BugCoverageSwiftInitTests.swift
//  BugCoverageSwiftInitTests
//
//  Created by Paul Zabelin on 6/1/18.
//  Copyright © 2018 Paul Zabelin. All rights reserved.
//

import XCTest
@testable import BugCoverageSwiftInit

class BugCoverageSwiftInitTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let sample: Sample? = Sample(name: "calling convenience init, which should call designated init")
        XCTAssert(sample != nil)
    }
    
}
