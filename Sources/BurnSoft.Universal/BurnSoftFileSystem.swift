//
//  BurnSoftFileSystem.swift
//  BurnSoftUniversal
//
//  Created by burnsoft on 10/10/19.
//  Copyright © 2019 burnsoft. All rights reserved.
//

#if !os(macOS)
import UIKit
#endif
import Foundation
///  General class that have misc file operations that have been used in our applications such as, copy file, delete file create directory, get file extension, etc
open class BSFileSystem: NSObject
{
    
    /**
     Simplify the copy and replace method with overwriteoption
     
     - Parameter
            - fromPath :the source path and file that you want to copy
            - toPath - new location to copy to
     
     - Throws: returns errot in msg string
     
     - Returns: true if it was able to copy the file, false if it was unable to.
     */
    open class func copyFileFromFilePath(fromPath: String, toPath: String, msg :inout String) -> Bool
    {
        let bAns : Bool = false
        let fileManager : FileManager = FileManager()
        let FileExistsAtDest: Bool = fileManager.fileExists(atPath: toPath)
        let FileExistsAtSource: Bool = fileManager.fileExists(atPath: fromPath)
        var _ : Bool = false
        
        if FileExistsAtSource && FileExistsAtDest
        {
            //DESTDELETESUCCESSFUL = [self DeleteFileByPath:toPath ErrorMessage:&deleteError];
        }
        return bAns
    }
    
    /**
     Create a directory if it doesn't already exist
     
     - Parameter path : full path of the new directory that you want to create
     
     - Throws:Error message in msg
     
     - Returns:true if it was able to create the directory, false if it was unable to
     */
    open class func createDirectoryIfNotExists(path : String, msg :inout String) -> Bool
    {
        var bAns : Bool = false
        var isDir : ObjCBool = false
        let fileManager : FileManager = FileManager()
        if  !fileManager.fileExists(atPath: path, isDirectory: &isDir)
        {
            do {
                try fileManager.createDirectory(atPath: path, withIntermediateDirectories: true, attributes: nil)
                bAns = true
            } catch  {
                msg = "Unexpected error: \(error)."
            }
            
        }
        return bAns
    }
}
