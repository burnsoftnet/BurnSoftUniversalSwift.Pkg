//
//  File.swift
//  
//
//  Created by burnsoft on 4/17/20.
//

import XCTest
import Foundation
import BurnSoftUniversal


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
        var msg : String = ""
        let fileManager = FileManager.default
        if fileManager.fileExists(atPath: copyfrom) {
            print("FILE EXISTS.")
            let didPass : Bool = BSFileSystem.copyFileFromFilePath(fromPath: copyfrom, toPath: copyTo, msg: &msg)
            if !didPass {
                NSLog("ERROR MESSAGE: %@",msg)
            } else {
                NSLog("file was copied!!")
            }
            XCTAssert(didPass)
        } else {
            print("FILE DOES NOT EXIST. Might be on build server")
            XCTAssert(true)
        }
    }
    func test_createDirectoryIfNotExists()
    {
        var msg : String = ""
        let fileManager = FileManager.default
        if fileManager.fileExists(atPath: copyfrom) {
            print("FILE EXISTS.")
            let didPass : Bool = BSFileSystem.createDirectoryIfNotExists(path: newDirectory, msg: &msg)
            if !didPass {
              NSLog("ERROR MESSAGE: %@",msg)
            } else {
                NSLog("Directory was created!")
            }
            XCTAssert(didPass)
        } else {
            print("FILE DOES NOT EXIST. Might be on build server")
            XCTAssert(true)
        }
    }
    func test_getFileExtensionbyPath()
    {
        self.measure {
            let fileManager = FileManager.default
            if fileManager.fileExists(atPath: copyfrom) {
                print("FILE EXISTS.")
                let value : String = BSFileSystem.getFileExtensionbyPath(filePath: copyfrom)
                let didPass : Bool = ( value == "txt")
                XCTAssert(didPass)
            } else {
                print("FILE DOES NOT EXIST. Might be on build server")
                XCTAssert(true)
            }
        }
    }
}
