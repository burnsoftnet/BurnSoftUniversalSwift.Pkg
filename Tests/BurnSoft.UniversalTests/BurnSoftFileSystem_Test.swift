//
//  File.swift
//  
//
//  Created by burnsoft on 4/17/20.
//

import XCTest
import Foundation
import BurnSoft_Universal


class BurnSoftFileSystem_Test: XCTestCase
{
    let copyfrom = "/Users/burnsoft/UnitTest/fstest/copyme.txt"
    let copyTo = "/Users/burnsoft/UnitTest/fstest/copyto/"
    let newDirectory = "/Users/burnsoft/UnitTest/fstest/copyto/createTest/"
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func test_copyFileFromFilePath()
    {
//        self.measure {
//            let avg = BurnSoftMath.AverageOf(data: dataInt)
//            let didPass : Bool = (avg == expecteddataAvg)
//            XCTAssert(didPass)
//        }
        //self.measure {
            var msg : String = ""
            let didPass : Bool = BurnSoftFileSystem.copyFileFromFilePath(fromPath: copyfrom, toPath: copyTo, msg: &msg)
            if !didPass {
              NSLog("ERROR MESSAGE: %@",msg)
            } else {
                NSLog("file was copied!!")
            }
        //}
    }
    func test_createDirectoryIfNotExists()
    {
        var msg : String = ""
        let didPass : Bool = BurnSoftFileSystem.createDirectoryIfNotExists(path: newDirectory, msg: &msg)
        if !didPass {
          NSLog("ERROR MESSAGE: %@",msg)
        } else {
            NSLog("Directory was created!")
        }
        XCTAssert(didPass)
    }
}
