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
```
