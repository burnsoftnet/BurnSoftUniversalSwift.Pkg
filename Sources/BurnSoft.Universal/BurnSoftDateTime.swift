//
//  BurnSoftDateTime.swift
//  BurnSoftUniversal
//
//  Created by burnsoft on 10/9/19.
//  Copyright © 2019 burnsoft. All rights reserved.
//
#if !os(macOS)
import UIKit
#endif
import Foundation
///  Differeent ways to format the date and time as needed.  Some you will allow you to pass
///  The Date and time to the function to have it returned as a certain format, while others will
///  return the current date and time as that format.  This was just to keep the date and time
///  stamps more uniformed across all programs
open class BurnSoftDateTime: NSObject
{
    /// Gets the current Date and Time in a certain format
    /// - returns: Gets the current Date and Time in a certain format
    open class func GetCurrentDateTime() -> String
    {
        let dateFormatter = DateFormatter()
        let currentDateTime = Date()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return dateFormatter.string(from: currentDateTime)
    }
    /// Format date to mm/dd/yyyy
    /// - parameter date: pass the date that you want to have formated and converted to a string
    /// - returns: Date in format mm/dd/yyyy
    open class func FormatDate(date: Date) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM'/'dd'/'yyyy"
        return dateFormatter.string(from: date)
    }
    /// Pass a Date and Time Stampe and have it returned in a connected format
    /// - parameter date: pass the date that you want to have formated and converted to a string
    /// - returns: returns the date in the format of yyyy-MM-dd_HH_mm_ss
    open class func FormatLongConnectedByDateAndTime(date: Date) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd_HH_mm_ss"
        return dateFormatter.string(from: date)
    }
    
    /// Get the Current Date and Time Stampe and have it returned in a connected format
    /// - returns:  returns the current date and time  in the format of yyyy-MM-dd_HH_mm_ss
    open class func FormatLongConnectedDateTimeStamp() -> String
    {
        let dateFormatter = DateFormatter()
        let currentDateTime = Date()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return dateFormatter.string(from: currentDateTime)
    }
}
