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
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var back: UIButton!
    @IBOutlet weak var home: UIButton!
    
    @IBOutlet weak var line: UIView!
    @IBOutlet weak var textView1: UITextView!
    @IBOutlet weak var textView2: UITextView!
    @IBOutlet weak var textView3: UITextView!
    @IBOutlet weak var textView4: UITextView!
    
    
    
    @IBAction func home(_ sender: Any) {
        let alert = UIAlertController(title: "Warning", message: "Are you sure you want leave without saving?", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { [weak alert] (_) in
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
        
        let contentSize = textView1.sizeThatFits(textView1.bounds.size)
        var box = textView1.frame
        box.size.height = contentSize.height
        textView1.frame = box
        
        let contentSize2 = textView2.sizeThatFits(textView2.bounds.size)
        var box2 = textView2.frame
        box2.size.height = contentSize2.height
        textView2.frame = box2
        
        let contentSize3 = textView3.sizeThatFits(textView3.bounds.size)
        var box3 = textView3.frame
        box3.size.height = contentSize3.height
        textView3.frame = box3
        
        let contentSize4 = textView4.sizeThatFits(textView4.bounds.size)
        var box4 = textView4.frame
        box4.size.height = contentSize4.height
        textView4.frame = box4
        
        textView1.layer.borderWidth = 1.0
        textView2.layer.borderWidth = 1.0
        textView3.layer.borderWidth = 1.0
        textView4.layer.borderWidth = 1.0
        nameLabel.text = enteredText
        
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

