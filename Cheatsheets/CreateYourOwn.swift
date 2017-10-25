//
//  CreateYourOwn.swift
//  Cheatsheets
//
//  Created by William Thompson on 4/9/17.
//  Copyright © 2017 William Thompson. All rights reserved.
//

import UIKit

class CreateYourOwn: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate   {
    var enteredText: String = "Cheatsheet"
    
    @IBOutlet weak var nameField: UITextField!
    
    
    let numColumns = ["1 Column","2 Columns"]
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return numColumns[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numColumns.count
    }
    
    @IBOutlet weak var redSlider: UISlider!
    @IBAction func redChanged(_ sender: UISlider) {
    }
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBAction func greenChanged(_ sender: UISlider) {
    }
    
    @IBOutlet weak var blueSlider: UISlider!
    @IBAction func blueChanged(_ sender: UISlider) {
    }
    var colour1 = UIColor.white
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let currentValueRed = redSlider.value
        let currentValueGreen = greenSlider.value
        let currentValueBlue = blueSlider.value
        
        
        let colour = UIColor(red: CGFloat(currentValueRed)/255, green: CGFloat(currentValueGreen)/255, blue: CGFloat(currentValueBlue)/255, alpha: 1.0)
        colorViewer.backgroundColor = colour
        colour1 = colour
        
    }
    
    @IBOutlet weak var colorViewer: UIView!
    
    @IBOutlet weak var labelNum: UILabel!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    var text1 = UIColor.black
    var background1 = UIColor.white
    
    @IBAction func BackgroundText(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            textColour.backgroundColor = colour1
            let text = colour1
            text1 = text
        case 1:
            backgroundColour.backgroundColor = colour1
            let background = colour1
            background1 = background
        default:
            break
        }
        
    }
    
    @IBOutlet weak var backgroundColour: UILabel!
    @IBOutlet weak var textColour: UILabel!
    
    
    // TESTING ZONE
    
    // END OF TESTING ZONE
    
    
    var selectedColumn = 0
    
    @IBOutlet weak var one1: UIButton!
    @IBOutlet weak var two1: UIButton!
    
    
    @IBAction func oneColumn(_ sender: UIButton) {
        
        selectedColumn = 1
        if selectedColumn == 1 {
            sender.backgroundColor = UIColor.darkGray
            two1.backgroundColor = UIColor.lightGray
        }
        
    }
    
    @IBAction func twoColumn(_ sender: UIButton) {
        selectedColumn = 2
        if selectedColumn == 2 {
            sender.backgroundColor = UIColor.darkGray
            one1.backgroundColor = UIColor.lightGray
        }
    }
    
    @IBOutlet weak var enter: UIButton!
    func filledOut() {
        
        if enteredText != "" && selectedColumn == 1 || selectedColumn == 2 {
            enter.isEnabled = true
        } else {
            let alert = UIAlertController(title: "Alert", message: "You need to fill out everything", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func enter(_ sender: Any) {
        enteredText = nameField.text!
        print(enteredText)
        filledOut()
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        _ = UIColor()
        if let data = segue.destination as? Cheatsheet {
            data.enteredText = enteredText
            data.text1 = text1
            data.background1 = background1
            data.selectedColumn = selectedColumn
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        one1.layer.cornerRadius = 4
        two1.layer.cornerRadius = 4
        one1.backgroundColor = UIColor.lightGray
        two1.backgroundColor = UIColor.lightGray
        textColour.backgroundColor = background1
        backgroundColour.backgroundColor = text1
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        nameField.delegate = self
        nameField.returnKeyType = .done
        
        self.view.addSubview(nameField)
    }
    func textFieldShouldReturn(_ nameField: UITextField) -> Bool
    {
        nameField.resignFirstResponder()
        return true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    
    
    
}

