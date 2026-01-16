# BSConversion

General Class that contain functions to convert for format one type of data into another

## convertBOOLtoString

Convert a boolean value to string true or false

```swift
    /**
     Convert a boolean value to string true or false
     
     - Parameter value : true or false
     
     - Returns:string "true" for true and "false" for false
     */
    open class func convertBOOLtoString(value : Bool) -> String
```

### EXAMPLE

```swift
import BurnSoft_Universal

self.measure {
    let value = BSConversion.convertBOOLtoString(value: true)
    let didPass : Bool = (value == "true")
    XCTAssert(didPass)
    }
```

## convertBOOLYNtoString

Convert a boolean value to string Yes or No

```swift
/**
 Convert a boolean value to string Yes or No
 
 - Parameter value : true or false
 
 - Returns: string "Yes" for true and "No" for false
 */
open class func convertBOOLYNtoString(value : Bool) -> String
```

### EXAMPLE

```swift
self.measure {
    let value = BSConversion.convertBOOLYNtoString(value: true)
    let didPass : Bool = (value == "Yes")
    XCTAssert(didPass)
}
```
