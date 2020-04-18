//
//  BurnSoftFormFunctions.swift
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
/// The Standard formating that is used for our applications Labels, and Text Boxes, along with a quick and easy way to send a message box to the user from the form you are at.
#if !os(macOS)
class BSFormFunctions: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    /// Creates a border around a Textview
    /// - parameter myObj: The Text View you want to set
    open class func setBordersTextView(myObj: UITextView)
    {

        myObj.layer.borderColor = UIColor.gray.cgColor
        myObj.layer.borderWidth = 2.3
        myObj.layer.cornerRadius = 2
    }

    /// Creates a border around a regular text box
    /// - parameter myObj: The Textbox Field you want to set
    open class func setBorderTextBox(myObj: UITextField)
    {
        myObj.layer.borderColor = UIColor.gray.cgColor
        myObj.layer.borderWidth = 2.3
        myObj.layer.cornerRadius = 2
    }
    /// Creates a border around the label
    /// - parameter myObj: The Label you want to set
    open class func setBorderLabel(myObj: UILabel)
    {
        myObj.layer.borderColor = UIColor.gray.cgColor
        myObj.layer.borderWidth = 2.3
        myObj.layer.cornerRadius = 2
    }
    /// Send a Message box from the View controller that you are currently on. It's easier then copying this function all over the place
    /// - parameter msg : The Body of the message
    /// - parameter myTitle: The title of the alert
    /// - parameter MyViewController:  The view controller that is calling this function
    open class func sendMessage(msg: String, myTitle: String, MyViewController: UIViewController)
    {
        let alert = UIAlertController(title: myTitle, message: msg, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        MyViewController.present(alert, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
#elseif os(macOS)
class BurnSoftFormFunctions: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    /// Creates a border around a Textview
    /// - parameter myObj: The Text View you want to set
    open class func setBordersTextView(myObj: NSTextView)
    {

        myObj.layer!.borderColor = NSColor.gray.cgColor
        myObj.layer!.borderWidth = 2.3
        myObj.layer!.cornerRadius = 2
    }

    /// Creates a border around a regular text box
    /// - parameter myObj: The Textbox Field you want to set
    open class func setBorderTextBox(myObj: NSTextField)
    {
        myObj.layer?.borderColor = NSColor.gray.cgColor
        myObj.layer?.borderWidth = 2.3
        myObj.layer?.cornerRadius = 2
    }
    /// Creates a border around the label
    /// - parameter myObj: The Label you want to set
    open class func setBorderLabel(myObj: NSTextField)
    {
        myObj.layer?.borderColor = NSColor.gray.cgColor
        myObj.layer?.borderWidth = 2.3
        myObj.layer!.cornerRadius = 2
    }
    /// Send a Message box from the View controller that you are currently on. It's easier then copying this function all over the place
    /// - parameter msg : The Body of the message
    /// - parameter myTitle: The title of the alert
    /// - parameter MyViewController:  The view controller that is calling this function
    open class func sendMessage(msg: String, myTitle: String, MyViewController: NSViewController) -> Bool
    {
        let alert = NSAlert()
        //title: myTitle, message: msg, preferredStyle: .alert
        alert.messageText = msg
        alert.informativeText = myTitle
        alert.alertStyle = NSAlert.Style.warning
        alert.addButton(withTitle: "OK")
        alert.addButton(withTitle: "Cancel")
        return alert.runModal() == NSApplication.ModalResponse.alertFirstButtonReturn
//        alert.addAction(NSAlertAction(title: "Ok", style: .default, handler: nil))
//        MyViewController.present(alert, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
#endif
