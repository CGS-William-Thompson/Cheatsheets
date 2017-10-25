//
//  Cheatsheet.swift
//  Cheatsheets
//
//  Created by William Thompson on 6/9/17.
//  Copyright © 2017 William Thompson. All rights reserved.
//

import UIKit

class Cheatsheet: UIViewController {
    
    
    var name: String = ""
    var enteredText: String = ""
    var text1: UIColor?
    var background1: UIColor?
    var selectedColumn: Int?
    var num = 0
    
    @IBOutlet var textView: [UITextView]!
    
    var sHeight1 = CGFloat()
    /*
     func keyboardDidShow(_ notification: NSNotification) {
     print("Keyboard will show!")
     let screenSize1 = UIScreen.main.bounds
     //let screenWidth1 = screenSize1.width
     let screenHeight1 = screenSize1.height
     sHeight1 = screenHeight1
     print(sHeight1)
     let keyboardSize:CGSize = (notification.userInfo![UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue.size
     print("Keyboard size: \(keyboardSize)")
     
     let height = min(keyboardSize.height, keyboardSize.width)
     let width = max(keyboardSize.height, keyboardSize.width)
     
     let totalHeight = sHeight - height
     let totalHeight1 = sHeight1 - height
     print("Total Height1: \(totalHeight1)")
     
     print("Width: \(width)")
     print(sHeight)
     print("Total Height: \(totalHeight)")
     print("sHeight: \(sHeight)")
     
     textView1.frame = CGRect(x: 16, y: 46, width: textWidth, height: totalHeight1 - 50)
     textView2.frame = CGRect(x: 16, y: 46, width: textWidth, height: totalHeight1 - 50)
     textView3.frame = CGRect(x: 16, y: 46, width: textWidth, height: totalHeight1 - 50)
     textView4.frame = CGRect(x: 16, y: 46, width: textWidth, height: totalHeight1 - 50)
     
     }
     
     func keyboardDidHide(_ notification: NSNotification) {
     
     print("Keyboard will hide!")
     }
     */
    
    
    @IBOutlet weak var done1: UIButton!
    
    var textV1 = ""
    var textV2 = ""
    var textV3 = ""
    var textV4 = ""
    
    @IBAction func surd(_ sender: Any) {
        if num == 1 {
          //  textView1.text += "a"
            //textView1.text += "NewText"
        }
    }
    
    @IBAction func done(_ sender: UIButton) {
        textV1 = textView1.text
        textV2 = textView2.texts
        textV3 = textView3.text
        textV4 = textView4.text
        
        nameLabel.isHidden = false
        back.isHidden = false
        
        textView1.resignFirstResponder()
        textView2.resignFirstResponder()
        textView3.resignFirstResponder()
        textView4.resignFirstResponder()
        print(textView1.text)
        done1.isHidden = true
        textView1.font = textView1.font?.withSize(14)
        textView2.font = textView1.font?.withSize(14)
        textView3.font = textView1.font?.withSize(14)
        textView4.font = textView1.font?.withSize(14)
        if selectedColumn == 1 {
            done1.isHidden = true
            textView1.isHidden = false
            textView3.isHidden = false
            textView1.frame = CGRect(x: 16, y: 46, width: textWidth, height: 278)
            textView3.frame = CGRect(x: 16, y: 330, width: textWidth, height: 278)
        } else if selectedColumn == 2 {
            line.isHidden = false
            textView1.isHidden = false
            textView2.isHidden = false
            textView3.isHidden = false
            textView4.isHidden = false
            textView1.frame = CGRect(x: 16, y: 46, width: 162, height: 278)
            textView2.frame = CGRect(x: 197, y: 46, width: 162, height: 278)
            textView3.frame = CGRect(x: 16, y: 330, width: 162, height: 278)
            textView4.frame = CGRect(x: 197, y: 330, width: 162, height: 278)
        }
        
    }
    
    @IBOutlet weak var back: UIButton!
    
    @IBAction func expand(_ sender: UITextView) {
        num = 1
        nameLabel.isHidden = true
        back.isHidden = true
        textView1.becomeFirstResponder()
        done1.isHidden = false
        textView1.frame = CGRect(x: 16, y: 46, width: textWidth, height: 355)
        textView1.font = textView1.font?.withSize(20)
        textView2.isHidden = true
        textView3.isHidden = true
        textView4.isHidden = true
        line.isHidden = true
    }
    
    @IBAction func expand2(_ sender: Any) {
        nameLabel.isHidden = true
        back.isHidden = true
        done1.isHidden = false
        textView2.becomeFirstResponder()
        textView2.frame = CGRect(x: 16, y: 46, width: textWidth, height: 355)
        textView2.font = textView1.font?.withSize(20)
        textView1.isHidden = true
        textView3.isHidden = true
        textView4.isHidden = true
        line.isHidden = true
    }
    
    @IBAction func expand3(_ sender: Any) {
        nameLabel.isHidden = true
        back.isHidden = true
        done1.isHidden = false
        textView3.becomeFirstResponder()
        textView3.frame = CGRect(x: 16, y: 46, width: textWidth, height: 355)
        textView3.font = textView1.font?.withSize(20)
        textView1.isHidden = true
        textView2.isHidden = true
        textView4.isHidden = true
        line.isHidden = true
    }
    
    
    @IBAction func expand4(_ sender: Any) {
        nameLabel.isHidden = true
        back.isHidden = true
        done1.isHidden = false
        textView4.becomeFirstResponder()
        textView4.frame = CGRect(x: 16, y: 46, width: textWidth, height: 355)
        textView4.font = textView1.font?.withSize(20)
        textView1.isHidden = true
        textView2.isHidden = true
        textView3.isHidden = true
        line.isHidden = true
    }
    
    
    
    
    
    @IBAction func save(_ sender: Any) {
        
    }
    
    
    
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var line: UIView!
    @IBOutlet weak var textView1: UITextView!
    @IBOutlet weak var textView2: UITextView!
    @IBOutlet weak var textView3: UITextView!
    @IBOutlet weak var textView4: UITextView!
    var textWidth = CGFloat()
    var sHeight = CGFloat()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if textV1 != "" || textV2 != "" || textV3 != "" || textV4 != "" {
            textView1.text = textV1
            textView2.text = textV2
            textView3.text = textV3
            textView4.text = textV4
        }
        
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        sHeight = screenHeight
        
        textWidth = screenWidth - 30
        print("textWidth \(textWidth)")
        print("screenWidth \(screenWidth)")
        done1.isHidden = true
        if selectedColumn == 1 {
            line.isHidden = true
            textView2.isHidden = true
            textView4.isHidden = true
            textView1.frame = CGRect(x: 16, y: 46, width: textWidth, height: 276)
            textView3.frame = CGRect(x: 16, y: 330, width: textWidth, height: 276)
        } else if selectedColumn == 2 {
            print("2")
            textView1.frame = CGRect(x: 16, y: 46, width: 162, height: 276)
        } else {
            print("Error")
        }
        
        //NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardDidShow(_:)), name: .UIKeyboardDidShow , object: nil)
        //NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardDidHide(_:)), name: .UIKeyboardDidHide , object: nil)
        
        nameLabel.text = enteredText
        textView1.backgroundColor = background1
        textView1.textColor = text1
        textView1.layer.borderWidth = 1.0
        textView2.backgroundColor = background1
        textView2.textColor = text1
        textView2.layer.borderWidth = 1.0
        textView3.backgroundColor = background1
        textView3.textColor = text1
        textView3.layer.borderWidth = 1.0
        textView4.backgroundColor = background1
        textView4.textColor = text1
        textView4.layer.borderWidth = 1.0
        
        //
        
        
        
        
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        _ = UIColor()
        if let data = segue.destination as? Folder1 {
            data.textV1 = textV1
            data.textV2 = textV2
            data.textV3 = textV3
            data.textV4 = textV4
        }
        
        if let data = segue.destination as? FinalProduct {
            data.textV1 = textV1
            data.textV2 = textV2
            data.textV3 = textV3
            data.textV4 = textV4
            data.selectedColumn = selectedColumn
            data.enteredText = enteredText
        }
        
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
