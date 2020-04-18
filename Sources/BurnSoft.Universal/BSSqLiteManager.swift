//
//  File.swift
//  
//
//  Created by burnsoft on 4/15/20.
//

import Foundation
import SQLite3

struct ErrMessages{
    var errMsg = ""
}

open class BSSqLiteManager : NSObject
{
//    init()
//    {
//
//    }
    
//    open class func openDatabase(part1DbPath : OpaquePointer) -> OpaquePointer? {
//      var db: OpaquePointer?
////      guard let part1DbPath = part1DbPath else {
////        print("part1DbPath is nil.")
////        return nil
////      }
//      if sqlite3_open(part1DbPath, &db) == SQLITE_OK {
//        print("Successfully opened connection to database at \(part1DbPath)")
//        return db
//      } else {
//        print("Unable to open database.")
//        //PlaygroundPage.current.finishExecution()
//      }
//    }

    open class func createTable(db : OpaquePointer?, sql :String) {
//        do{
//            try {
                var createTableStatement: OpaquePointer?
                // 2
                if sqlite3_prepare_v2(db, sql, -1, &createTableStatement, nil) ==
                    SQLITE_OK {
                  // 3
                  if sqlite3_step(createTableStatement) == SQLITE_DONE {
                    print("\nContact table created.")
                  } else {
                    print("\nContact table is not created.")
                  }
                } else {
                  print("\nCREATE TABLE statement is not prepared.")
                }
                // 4
                sqlite3_finalize(createTableStatement)
//                catch{
//
//                }
//            }
//        }
    }
    
    open class func insert(db : OpaquePointer?, sql :String) -> Bool {
      var insertStatement: OpaquePointer?
      // 1
      if sqlite3_prepare_v2(db, sql, -1, &insertStatement, nil) ==
          SQLITE_OK {
        let id: Int32 = 1
        let name: NSString = "Ray"
        // 2
        sqlite3_bind_int(insertStatement, 1, id)
        // 3
        sqlite3_bind_text(insertStatement, 2, name.utf8String, -1, nil)
        // 4
        if sqlite3_step(insertStatement) == SQLITE_DONE {
            return true
          //print("\nSuccessfully inserted row.")
        } else {
          //print("\nCould not insert row.")
            return false
        }
      } else {
        //print("\nINSERT statement is not prepared.")
        return false 
      }
      // 5
      //sqlite3_finalize(insertStatement)
    }
    
    open class func query(db : OpaquePointer?, sql :String) {
      var queryStatement: OpaquePointer?
      // 1
      if sqlite3_prepare_v2(db, sql, -1, &queryStatement, nil) ==
          SQLITE_OK {
        // 2
        if sqlite3_step(queryStatement) == SQLITE_ROW {
          // 3
          let id = sqlite3_column_int(queryStatement, 0)
          // 4
          guard let queryResultCol1 = sqlite3_column_text(queryStatement, 1) else {
            print("Query result is nil")
            return
          }
          let name = String(cString: queryResultCol1)
          // 5
          print("\nQuery Result:")
          print("\(id) | \(name)")
      } else {
          print("\nQuery returned no results.")
      }
      } else {
          // 6
        let errorMessage = String(cString: sqlite3_errmsg(db))
        print("\nQuery is not prepared \(errorMessage)")
      }
      // 7
      sqlite3_finalize(queryStatement)
    }
}

