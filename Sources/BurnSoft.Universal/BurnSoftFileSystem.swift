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
open class BurnSoftFileSystem: NSObject
{
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
}
