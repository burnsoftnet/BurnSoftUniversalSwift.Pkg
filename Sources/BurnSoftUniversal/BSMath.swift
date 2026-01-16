//
//  BurnSoftMath.swift
//  BurnSoftUniversal
//
//  Created by burnsoft on 10/10/19.
//  Copyright © 2019 burnsoft. All rights reserved.
//

#if !os(macOS)
import UIKit
#elseif os(macOS)
import Cocoa
#endif

/// General Math functions that have been used in passed programs, that will return the value as needed based on their functions.
/// Some you can pass strings and get the integer or double results, and some will convert the double / integer calulation back as a string.  which was required for some of the application at the time.
open class BSMath: NSObject
{
    /// Pass the price and qty to have it broken down to Price per item
    /// - parameter price: The price of the item in String format
    /// - parameter Qty: The Qty for the price in String Format
    /// - returns:Double Value with a max of two decimal places
    /// - throws: Error Out
    open class func GetPricePerItem(price: String, Qty: String) -> Double
    {
        let dPrice : Double = Double(price)!
        let dQty : Double = Double(Qty)!
        return GetPricePerItem(price: dPrice, Qty: dQty)
    }
    /// Pass the price and qty to have it broken down to Price per item
    /// - parameter price: The Price of the item in double format
    /// - parameter Qty:  The Qty for the price in double format
    /// - returns:Double Value with a max of two decimal places
    /// - throws: Error Out
    open class func GetPricePerItem(price: Double, Qty: Double) -> Double
    {
        var dAns: Double = price / Qty
        let sAns = String(format: "%.2f", dAns)
        dAns = Double(sAns)!
        return dAns
    }
    /// Pass two values to have them multiplied
    /// - parameter value1: First value
    /// - parameter value2: Second value to multiple aginst first value
    /// - returns: Integer Value of result
    /// - throws: Error Out
    open class func MultiplyTwoItems(value1 :String, value2 :String ) -> Int
    {
        let ivalue1 = Int(value1)
        let ivalue2 = Int(value2)
        return MultiplyTwoItems(value1: ivalue1!, value2: ivalue2!)
    }
    /// Pass two values to have them multiplied
    /// - parameter value1: First value
    /// - parameter value2: Second value to multiple aginst first value
    /// - returns: Double Value of result
    /// - throws: Error Out
    open class func MultiplyTwoItems(value1 :String, value2 :String ) -> Double
    {
        let ivalue1 = Double(value1)
        let ivalue2 = Double(value2)
        return MultiplyTwoItems(value1: ivalue1!, value2: ivalue2!)
    }
    /// Pass two values to have them multiplied
    /// - parameter value1: First value
    /// - parameter value2: Second value to multiple aginst first value
    /// - returns: Integer value of results
    /// - throws: Error Out
    open class func MultiplyTwoItems(value1 :Int, value2 :Int ) -> Int
    {
        return value1 * value2
    }
    /// Pass two values to have them multiplied
    /// - parameter value1: First value
    /// - parameter value2: Second value to multiple aginst first value
    /// - returns:Double value of results
    /// - throws: Error Out
    open class func MultiplyTwoItems(value1 :Double, value2 :Double ) -> Double
    {
        return value1 * value2
    }
    /// Pass two values to have them multiplied
    /// - parameter value1: First value
    /// - parameter value2: Second value to multiple aginst first value
    /// - returns:returns a double with two decimal
    /// - throws: Error Out
    open class func multiplyTwoItems2DecDouble(value1 :Double, value2 :Double ) -> Double
    {
        var dValue = MultiplyTwoItems(value1: value1, value2: value2)
        let sAns = String(format: "%.2f", dValue)
        dValue = Double(sAns)!
        return dValue
    }
    /// Pass two values to be added together
    /// - parameter value1: First value
    /// - parameter value2: Second value to added aginst first value
    /// - returns:returns the two values added as Integer
    open class func AddTwoItems(value1 :Int, value2 :Int ) -> Int
    {
        return value1 + value2
    }
    /// Pass two values to be added together
    /// - parameter value1: First value
    /// - parameter value2: Second value to added aginst first value
    /// - returns:returns the two values added as Double
    open class func AddTwoItems(value1 :Double, value2 :Double ) -> Double
    {
        return value1 + value2
    }
    /// Pass two values to be added together
    /// - parameter value1: First value
    /// - parameter value2: Second value to added aginst first value
    /// - returns:returns the two values added as Integer
    open class func AddTwoItems(value1 :String, value2 :String) -> Int
    {
        let ivalue1 = Int(value1)
        let ivalue2 = Int(value2)
        return AddTwoItems(value1: ivalue1!, value2: ivalue2!)
    }
    /// Pass two values to be added together
    /// - parameter value1: First value
    /// - parameter value2: Second value to added aginst first value
    /// - returns:returns the two values added as Double
    open class func AddTwoItems(value1 :String, value2 :String) -> Double
    {
        let ivalue1 = Double(value1)
        let ivalue2 = Double(value2)
        return AddTwoItems(value1: ivalue1!, value2: ivalue2!)
    }
    /// Get the Average of a set of numbers in an array
    /// - parameter data: Array of Double
    /// - Returns: Average of number in Double
    open class func AverageOf(data: Array<Double>) -> Double
    {
        var Total :Double = 0.0
        for number in data
        {
            Total += number
        }
        let items = Double(data.count)
        return Total / items
    }
    /// Get the Average of a set of numbers in an array
    /// - parameter data: Array of Integers
    /// - Returns: Average of number in Double
    open class func AverageOf(data: Array<Int>) -> Double
    {
        var Total :Int = 0
        for number in data
        {
            Total += number
        }
        let items = data.count
        return Double(Total / items)
    }
    /// Get the standard deviation of an array of numbers
    /// - parameter data: Array of Double
    /// - Returns: Standard Deviation in Double
    open class func GetStandardDeviation(data: Array<Double>) -> Double
    {
        if data.count == 0
        {
            return 0
        }
        var dAns: Double = 0
        var sumOfPowDiff: Double = 0
        var listAvg: Double = 0
        let mean = AverageOf(data: data)
        let itemCount = Double(data.count)
        
        for number in data
        {
            sumOfPowDiff += pow(number - mean,2);
        }
        listAvg = sumOfPowDiff / itemCount;
        dAns = sqrt(listAvg)
        return dAns
    }
    /// Get the standard deviation of an array of numbers
    /// - parameter data: Array of Integers
    /// - Returns: Standard Deviation in Double
    open class func GetStandardDeviation(data: Array<Int>) -> Double
    {
        if data.count == 0
        {
            return 0
        }
        var dAns: Double = 0
        var sumOfPowDiff: Double = 0
        var listAvg: Double = 0
        let mean = AverageOf(data: data)
        let itemCount = Double(data.count)
        
        for number in data
        {
            sumOfPowDiff += pow(Double(number) - mean,2);
        }
        listAvg = sumOfPowDiff / itemCount;
        dAns = sqrt(listAvg)
        return dAns
    }
    
}
