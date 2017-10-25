//
//  SavedCheetsheets.swift
//  Cheatsheets
//
//  Created by William Thompson on 25/10/17.
//  Copyright © 2017 William Thompson. All rights reserved.
//


import UIKit

class SavedCheetsheets: UIViewController {
    var textV1: String = ""
    var textV2: String = ""
    var textV3: String = ""
    var textV4: String = ""
    var selectedColumn: Int?
    var enteredText: String = ""
    var num: Int?
    var sort: Array = [""]
    var sort2: Array = [""]
    var sort3: Array = [""]
    var array: Array = [""]
    
    @IBOutlet weak var textView1: UITextView!
    @IBOutlet weak var textView2: UITextView!
    @IBOutlet weak var textView3: UITextView!
    @IBOutlet weak var textView4: UITextView!
    @IBOutlet weak var line: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    var textWidth = CGFloat()
    var sHeight = CGFloat()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        print(sort)
        print(sort2)
        print(sort3)
        print(array)
        
        if num == 1 {
            textView1.text = array[0]
            textView2.text = array[1]
            textView3.text = array[2]
            textView4.text = array[3]
        } else if num == 2 {
            textView1.text = array[4]
            textView2.text = array[5]
            textView3.text = array[6]
            textView4.text = array[7]
        } else if num == 3 {
            textView1.text = array[8]
            textView2.text = array[9]
            textView3.text = array[10]
            textView4.text = array[11]
        } else if num == 4 {
            textView1.text = array[12]
            textView2.text = array[13]
            textView3.text = array[14]
            textView4.text = array[15]
        } else if num == 5 {
            textView1.text = array[16]
            textView2.text = array[17]
            textView3.text = array[18]
            textView4.text = array[19]
        } else if num == 6 {
            textView1.text = array[20]
            textView2.text = array[21]
            textView3.text = array[23]
            textView4.text = array[24]
        }
        
        
        
        //textView1.text = textV1
        //textView2.text = textV2
        //textView3.text = textV3
        //textView4.text = textV4
        textView1.layer.borderWidth = 1.0
        textView2.layer.borderWidth = 1.0
        textView3.layer.borderWidth = 1.0
        textView4.layer.borderWidth = 1.0
        nameLabel.text = enteredText
        
        
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        sHeight = screenHeight
        textWidth = screenWidth - 30
        if selectedColumn == 1 {
            line.isHidden = true
            textView2.isHidden = true
            textView4.isHidden = true
            textView1.frame = CGRect(x: 16, y: 46, width: textWidth, height: 276)
            textView3.frame = CGRect(x: 16, y: 330, width: textWidth, height: 276)
        } else if selectedColumn == 2 {
            // textView1.frame = CGRect(x: 16, y: 46, width: 162, height: 276)
        } else {
            print("Error")
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        _ = UIColor()
        if let data = segue.destination as? SavedCheetsheets {
            data.textV1 = textV1
            data.textV2 = textV2
            data.textV3 = textV3
            data.textV4 = textV4
            data.selectedColumn = selectedColumn
            data.enteredText = enteredText
            data.num = num
            data.sort2 = sort2
            data.sort = sort
            data.sort3 = sort3
            data.array = array
        }
    }
    
    
}

