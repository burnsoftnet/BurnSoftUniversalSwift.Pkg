//
//  File.swift
//  
//
//  Created by burnsoft on 4/18/20.
//

import Foundation
import XCTest
import BurnSoftUniversal

class BSConversion_Test: XCTestCase {
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        //currentDateTime = Date()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_convertBOOLtoString() {
        self.measure {
            let value = BSConversion.convertBOOLtoString(value: true)
            let didPass : Bool = (value == "true")
            XCTAssert(didPass)
        }
    }
    func test_convertBOOLYNtoString() {
        self.measure {
            let value = BSConversion.convertBOOLYNtoString(value: true)
            let didPass : Bool = (value == "Yes")
            XCTAssert(didPass)
        }
    }
}
