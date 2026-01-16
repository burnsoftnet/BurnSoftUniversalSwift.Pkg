//
//  BurnSoftGeneral_UnitTest.swift
//  BurnSoftUniversalTests
//
//  Created by burnsoft on 10/9/19.
//  Copyright © 2019 burnsoft. All rights reserved.
//

import XCTest
import  BurnSoftUniversal

class BurnSoftGeneral_UnitTest: XCTestCase {

    let str = "  Hello, playground's ` & more crap "
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFCString() {
        //let str = "  Hello, playground's ` & more crap "
        let OrgCount = str.count
        let newString: String = BSGeneral.FCString(sValue: str)
        NSLog(newString)
        let newCount = newString.count
        let isLess: Bool = (newCount < OrgCount)
        //less because we trimmed off the fat
        XCTAssert(isLess)
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func test_FCStringXML()
    {
        let OrgCount = str.count
        let newString: String = BSGeneral.FCStringXML(sValue: str)
        let newCount = newString.count
        let isGreater: Bool = (newCount > OrgCount)
        //less because we trimmed off the fat
        XCTAssert(isGreater)
    }
    
    func test_FCLong()
    {
        let sValue : String = "1024"
        let value :UInt64 = BSGeneral.FCLong(sValue: sValue)
        let isGreater: Bool = (value > 0)
        XCTAssert(isGreater)
    }
    
    func test_getValueFromLongString()
    {
        let newValue = BSGeneral.getValueFromLongString(sValue: "1,2,3,4,5", Seperator: ",", AtIndex: 4)
        let isEqual : Bool = (newValue == "5")
        XCTAssert(isEqual)
    }
    
    func test_CountCharacters()
    {
        let value = BSGeneral.CountCharacters(sValue: str)
        let isGreater : Bool = (value > 0)
        XCTAssert(isGreater)
    }
    
    func test_isNumeric()
    {
        let sValue : String = "1024"
        let isNumber : Bool = BSGeneral.isNumeric(sValue: sValue)
        XCTAssert(isNumber)
    }
    
    func test_ConvertStringToInteger()
    {
        let value : Int = BSGeneral.ConvertStringToInteger(sValue: "1024")
        XCTAssert((value > 0))
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
