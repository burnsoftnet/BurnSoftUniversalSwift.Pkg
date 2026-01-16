//
//  File.swift
//  
//
//  Created by burnsoft on 4/18/20.
//

import Foundation

open class BSConversion : NSObject
{
    
    /**
     Convert a boolean value to string true or false
     
     - Parameter value : true or false
     
     - Returns:string "true" for true and "false" for false
     */
    open class func convertBOOLtoString(value : Bool) -> String{
        var sAns : String = "false"
        if value{
            sAns = "true"
        }
        return sAns
    }
    
    /**
     Convert a boolean value to string Yes or No
     
     - Parameter value : true or false
     
     - Returns: string "Yes" for true and "No" for false
     */
    open class func convertBOOLYNtoString(value : Bool) -> String{
        var sAns : String = "No"
        if value{
            sAns = "Yes"
        }
        return sAns
    }
}
