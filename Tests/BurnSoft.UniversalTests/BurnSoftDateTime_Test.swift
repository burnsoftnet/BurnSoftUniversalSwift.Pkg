//
//  BurnSoftDateTime_Test.swift
//  BurnSoftUniversalTests
//
//  Created by burnsoft on 10/9/19.
//  Copyright © 2019 burnsoft. All rights reserved.
//

import XCTest
import BurnSoft_Universal

class BurnSoftDateTime_Test: XCTestCase {
    
    let currentDateTime = Date()
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        //currentDateTime = Date()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_GetCurrentDateTime() {
        let value : String = BurnSoft_Universal.BurnSoftDateTime.GetCurrentDateTime()
        //let value : String = "324234"
        NSLog(value)
        XCTAssert((value.count > 0))
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func test_FormatDate()
    {
        let value : String = BurnSoft_Universal.BurnSoftDateTime.FormatDate(date: currentDateTime)
        NSLog(value)
        XCTAssert((value.count > 0))
    }
    
    func test_FormatLongConnectedByDateAndTime()
    {
        let value : String = BurnSoftDateTime.FormatLongConnectedByDateAndTime(date: currentDateTime)
        NSLog(value)
        XCTAssert((value.count > 0))
    }
    
    func test_FormatLongConnectedDateTimeStamp()
    {
        let value : String = BurnSoftDateTime.FormatLongConnectedDateTimeStamp()
        NSLog(value)
        XCTAssert((value.count > 0))
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
