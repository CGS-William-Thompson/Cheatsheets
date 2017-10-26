//
//  finalProduct.swift
//  Cheatsheets
//
//  Created by William Thompson on 23/10/17.
//  Copyright © 2017 William Thompson. All rights reserved.
//

import UIKit

class FinalProduct: UIViewController {
    var textV1: String = ""
    var textV2: String = ""
    var textV3: String = ""
    var textV4: String = ""
    var selectedColumn: Int?
    var enteredText: String = ""
    var text1: UIColor?
    var background1: UIColor?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var home: UIButton!
    
    @IBOutlet weak var line: UIView!
    @IBOutlet weak var textView1: UITextView!
    @IBOutlet weak var textView2: UITextView!
    @IBOutlet weak var textView3: UITextView!
    @IBOutlet weak var textView4: UITextView!
    @IBOutlet weak var save: UIButton!
    
    
    
    @IBAction func home(_ sender: Any) {
        let alert = UIAlertController(title: "Warning", message: "Are you sure you want leave without saving?", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { [weak alert] (_) in
            self.performSegue(withIdentifier: "home", sender: self)
        }))
        alert.addAction(UIAlertAction(title: "No", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    func textChange() {
        textView1.text = textV1
        textView2.text = textV2
        textView3.text = textV3
        textView4.text = textV4
    }
    
    @IBOutlet weak var screenShot: UIButton!
    
    @IBAction func screenShot(_ sender: UIButton) {
        screenShot.isHidden = true
        back.isHidden = true
        home.isHidden = true
        save.isHidden = true
        //Create the UIImage
        let renderer = UIGraphicsImageRenderer(size: view.frame.size)
        let image = renderer.image(actions: { context in
            view.layer.render(in: context.cgContext)
        })
        
        //Save it to the camera roll
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        screenShot.isHidden = false
        back.isHidden = false
        home.isHidden = false
        save.isHidden = false
    }
    var textWidth = CGFloat()
    var sHeight = CGFloat()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textChange()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        sHeight = screenHeight
        textWidth = screenWidth - 30
        
        
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
        save.layer.borderWidth = 1.0
        screenShot.layer.borderWidth = 1.0
        
        if selectedColumn == 1 {
            line.isHidden = true
            textView2.isHidden = true
            textView4.isHidden = true
            textView1.frame = CGRect(x: 16, y: 46, width: textWidth, height: 276)
            textView3.frame = CGRect(x: 16, y: 330, width: textWidth, height: 276)
        } else if selectedColumn == 2 {
            print("2")
            // textView1.frame = CGRect(x: 16, y: 46, width: 162, height: 276)
        } else {
            print("Error")
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        
        super.viewDidLayoutSubviews()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        _ = UIColor()
        if let data = segue.destination as? Cheatsheet {
            data.textV1 = textV1
            data.textV2 = textV2
            data.textV3 = textV3
            data.textV4 = textV4
            data.selectedColumn = selectedColumn
            data.enteredText = enteredText
        }
        
        if let data = segue.destination as? Folder1 {
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

