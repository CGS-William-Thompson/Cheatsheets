//
//  Folder1.swift
//  Cheatsheets
//
//  Created by William Thompson on 24/10/17.
//  Copyright © 2017 William Thompson. All rights reserved.
//

import UIKit

class Folder1: UIViewController {
    
    var textV1: String = ""
    var textV2: String = ""
    var textV3: String = ""
    var textV4: String = ""
    var selectedColumn: Int?
    var enteredText: String = ""
    var num = 0
    var array = [""]
    //let array = ["horse", "cow", "camel", "sheep", "goat"]
    
    
    var sort = ["", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""]
    
    var thing1 = [""]
    let thing2 = "2"
    let thing3 = "3"
    let thing4 = "4"
    
    var sort2 = [""]
    var sort3 = [""]
    
    
    
    @IBAction func save(_ sender: Any) {
        UserDefaults.standard.set(sort, forKey: "array")
    }
    
    @IBAction func sheet1(_ sender: Any) {
        num = 1
    }
    
    @IBAction func sheet2(_ sender: Any) {
        num = 2
    }
    
    @IBAction func sheet3(_ sender: Any) {
        num = 3
    }
    
    @IBAction func sheet4(_ sender: Any) {
        num = 4
    }
    
    @IBAction func sheet5(_ sender: Any) {
        num = 5
    }
    
    @IBAction func sheet6(_ sender: Any) {
        num = 6
    }
    
    
    var i = 0
    
    func sorting() {
        while i <= 26 {
            if sort[i] == "" {
                sort.insert(textV1, at: i)
                sort.insert(textV2, at: i+1)
                sort.insert(textV3, at: i+2)
                sort.insert(textV4, at: i+3)
                print(i)
                print(sort)
                i = 100
                
                UserDefaults.standard.set(sort, forKey: "SortArray")
            }  else {
                i += 1
                print("Do Things")
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(textV1)
        
        sorting()
        print(sort)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let defaults1 = UserDefaults.standard
        let myarray = defaults1.stringArray(forKey: "SavedStringArray") ?? [String]()
        thing1 = myarray
    
        if var x = UserDefaults.standard.object(forKey: "array") as? [String] {
            array = x
        }
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
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
}

