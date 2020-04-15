//
//  BurnSoftMath_Test.swift
//  BurnSoftUniversalTests
//
//  Created by burnsoft on 10/10/19.
//  Copyright © 2019 burnsoft. All rights reserved.
//

import XCTest
import BurnSoft_Universal

class BurnSoftMath_Test: XCTestCase {

    
    var dataInt = [Int]()
    var dataDoub = [Double]()
    let price = "19.99"
    let qty = "50"
    let dprice = 19.99
    let dqty = 50.0
    let sValue1 = "1"
    let sdValue1 = "1.2"
    let sValue2 = "2"
    let iValue1 = 1
    let iValue2 = 2
    let pi = 3.1415926
    let dValue1 = 1.2
    let dValue2 = 2.0
    let expectedppi = 0.3998
    let expecteddataAvg = 1135.00
    let expectedStdDev = 22.912878474779198
    let expectedmulti = 4.0
    let expectedmultiInt = 4
    let expectedAdd = 3.2
    let expectedAddInt = 3
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        dataInt.append(1100)
        dataInt.append(1110)
        dataInt.append(1120)
        dataInt.append(1130)
        dataInt.append(1140)
        dataInt.append(1150)
        dataInt.append(1160)
        dataInt.append(1170)
        
        dataDoub.append(1100.00)
        dataDoub.append(1110.00)
        dataDoub.append(1120.00)
        dataDoub.append(1130.00)
        dataDoub.append(1140.00)
        dataDoub.append(1150.00)
        dataDoub.append(1160.00)
        dataDoub.append(1170.00)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_test_averageOf_Int()
    {
        self.measure {
            let avg = BurnSoftMath.AverageOf(data: dataInt)
            let didPass : Bool = (avg == expecteddataAvg)
            XCTAssert(didPass)
        }
    }
    
    func test_test_averageOf_Double()
    {
        self.measure {
            let avg = BurnSoftMath.AverageOf(data: dataDoub)
            let didPass : Bool = (avg == expecteddataAvg)
            XCTAssert(didPass)
        }
    }

    func test_GetStandardDeviation_Int()
    {
        self.measure {
            let stdDev = BurnSoftMath.GetStandardDeviation(data: dataInt)
            let didPass : Bool = (stdDev == expectedStdDev)
            XCTAssert(didPass)
        }
    }
    
    func test_GetStandardDeviation_Dbl()
    {
        self.measure {
            let stdDev = BurnSoftMath.GetStandardDeviation(data: dataDoub)
            let didPass : Bool = (stdDev == expectedStdDev)
            XCTAssert(didPass)
        }
    }
    
    func test_GetPricePerItem_String()
    {
        let ppi = BurnSoftMath.GetPricePerItem(price: price, Qty: qty)
        let didPass : Bool = (ppi > expectedppi)
        XCTAssert(didPass)
    }
    func test_GetPricePerItem_Double()
    {
        let ppi = BurnSoftMath.GetPricePerItem(price: dprice, Qty: dqty)
        let didPass : Bool = (ppi > expectedppi)
        XCTAssert(didPass)
    }
    
    func test_MultiplyTwoItems_StringInt()
    {
        let value : Int = BurnSoftMath.MultiplyTwoItems(value1: sValue2, value2:  sValue2)
        let didPass = (value == expectedmultiInt)
        XCTAssert(didPass)
    }
    func test_MultiplyTwoItems_StringDouble()
    {
        let value : Double = BurnSoftMath.MultiplyTwoItems(value1: sValue2, value2:  sValue2)
        let didPass = (value == expectedmulti)
        XCTAssert(didPass)
    }
    func test_MultiplyTwoItems_IntInt()
    {
        let value : Int = BurnSoftMath.MultiplyTwoItems(value1: iValue2, value2:  iValue2)
        let didPass = (value == expectedmultiInt)
        XCTAssert(didPass)
    }
    func test_MultiplyTwoItems_DoubleDouble()
    {
        let value : Double = BurnSoftMath.MultiplyTwoItems(value1: dValue2, value2:  dValue2)
        let didPass = (value == expectedmulti)
        XCTAssert(didPass)
    }
    func test_multiplyTwoItems2DecDouble()
    {
        let value = BurnSoftMath.multiplyTwoItems2DecDouble(value1: pi, value2: 1)
        let didPass: Bool = (value == 3.14)
        XCTAssert(didPass)
    }
    func test_AddTwoItems_IntInt()
    {
        let value : Int = BurnSoftMath.AddTwoItems(value1: iValue1, value2: iValue2)
        let didPass: Bool = (value == expectedAddInt)
        XCTAssert(didPass)
    }
    func test_AddTwoItems_DoubleDouble()
    {
        let value : Double = BurnSoftMath.AddTwoItems(value1: dValue1, value2: dValue2)
        let didPass: Bool = (value == expectedAdd)
        XCTAssert(didPass)
    }
    
    func test_AddTwoItems_StringInt()
    {
        let value : Int = BurnSoftMath.AddTwoItems(value1: sValue1, value2: sValue2)
        let didPass: Bool = (value == expectedAddInt)
        XCTAssert(didPass)
    }
    func test_AddTwoItems_StringDouble()
    {
        let value : Double = BurnSoftMath.AddTwoItems(value1: sdValue1, value2: sValue2)
        let didPass: Bool = (value == expectedAdd)
        XCTAssert(didPass)
    }
}
