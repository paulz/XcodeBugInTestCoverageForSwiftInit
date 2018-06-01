//
//  Sample.swift
//  BugCoverageSwiftInit
//
//  Created by Paul Zabelin on 6/1/18.
//  Copyright © 2018 Paul Zabelin. All rights reserved.
//

import Foundation

class Sample {
    init() {
        print("This line is reported as not covered with tests in Xcode, but it is, as you can see this message in test run output")
    }

    convenience init(name: String) {
        self.init()
    }
}
