//
//  BurnSoftGeneral.swift
//  BurnSoftUniversal
//
//  Created by burnsoft on 10/9/19.
//  Copyright © 2019 burnsoft. All rights reserved.
//

#if !os(macOS)
import UIKit
#elseif os(macOS)
import Cocoa
#endif
///  Misc Functions that help format content of a string, verify if the value is numeric,
///  Get a certain value in a string array, convert Bool to string or convert something as
///  simple as y/n yes/no to a boolean true/false/
open class BSGeneral: NSObject
{
    /// This will Fluff/Prep the string for inserting value into a database
    /// It will mostly take out things that can conflict, such as the single qoute
    /// - parameter sValue : The string that you want to format
    /// - returns: The string formated and removed of characters and whitespaces
    /// - throws: Out Error
    open class func FCString(sValue: String) -> String {
        var sAns : String = sValue.replacingOccurrences(of: "'", with: "''")
        sAns = sAns.replacingOccurrences(of: "`", with: "'")
        sAns = sAns.trimmingCharacters(in: CharacterSet.whitespaces)
        return sAns
    }
    

    /// This will Fluff/Prep the string for inserting value into a database and XML File
    /// It will mostly take out things that can conflict, such as the single qoute
    /// - parameter sValue: the string that you wish to format
    /// - returns: formated string
    /// - throws: Error Out
    open class func FCStringXML(sValue:String) -> String {
        var sAns: String = FCString(sValue: sValue);
        sAns = sAns.replacingOccurrences(of: "&", with: "&amp;")
        sAns = sAns.trimmingCharacters(in: CharacterSet.whitespaces)
        return sAns
    }
    
    /// This will convert a string into a long value
    /// - parameter sValue: the string that you wish to format
    /// - returns: Converted string to long
    /// - throws: Error Out
    open class func FCLong(sValue:String)-> UInt64 {
        guard let iAns = UInt64(sValue) else { return 0 }
        return iAns
    }

    /// This will get the value that is store in a long string
    /// Pass the string, the common seperater, and the ares it should be located at
    /// - parameter sValue: the string that you want to break up
    /// - parameter Seperator: The character that you want to use as the seperator
    /// - parameter AtIndex: Integer value of the location of the string array that you want to extract from
    /// - returns: the extracted string from the main string
    /// - throws: Error Out
    open class func getValueFromLongString(sValue: String, Seperator: String, AtIndex: Int) -> String
    {
        let myArray = sValue.components(separatedBy: Seperator)
        let sAns: String = myArray[AtIndex]
        return sAns
    }
    
    /// This will return the number of characters in a string
    /// - parameter sValue: the string that you want to count
    /// - returns: Integer count of the characters in the string
    /// - throws: Error Out
    open class func CountCharacters(sValue: String) -> Int
    {
        return sValue.count
    }
    
    /// This will return true if the value is a number, false if it isn't
    /// - parameter sValue : the string that you want to check and see if it is a number
    /// - returns: True if number, and false if it is not
    open class func isNumeric(sValue: String) -> Bool
    {
        var bAns: Bool = false
        let ivalue = Int(sValue)
        if ivalue != nil {
            bAns = true
        }
        return bAns
    }
    
    ///  Convert a string to a integer
    /// - parameter sValue: the string value that you want to convert to Integer
    /// - returns: integer value of string, if not valid it will return 0
    open class func ConvertStringToInteger(sValue: String) -> Int
    {
        return Int(sValue) ?? 0
    }
    
    /// Converts a string to a boolean value, if the string is "yes/Yes/y/Y/YES/TRUE/True/true then it will return YES
    /// Otherwise it will return NO/FALSE;
    /// - parameter sValue: Convert yes, y, or true to a boolean true or no, n, false to a boolean false
    /// - returns: True or False
    /// - throws: Error Out
    open class func ConvertStringToBool(sValue: String) -> Bool
    {
        var bAns : Bool = false
        if (sValue.lowercased() == "yes" || sValue.lowercased() == "y" || sValue.lowercased() == "true")
        {
            bAns = true
        }
        
        return bAns
    }
    
    /// Convert the boolen to a string yes or No
    /// - parameter bValue: boolean true or false
    /// - returns: yes or no as string
    /// - throws: Error Out
    open class func ConvertBoolToString(bValue: Bool) -> String
    {
        var sAns : String = "no"
        if (bValue)
        {
            sAns = "yes"
        }
        return sAns
    }
    /// Convert an Integer to a string value
    /// - parameter value : Integer value
    /// - returns: value as string
    open class func ConvertToString(value : Int) -> String
    {
        return String(format: "%i", value)
    }
    /// Conver a Double to a string value
    /// - parameter value: Double value
    /// - returns: value as string
    open class func ConvertToString(value : Double) -> String
    {
        return String(format: "%f", value)
    }
}
