//
//  ViewController.swift
//  Cheatsheets
//
//  Created by William Thompson on 8/8/17.
//  Copyright © 2017 William Thompson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func box(_ sender: Any) {
        
    }
    
    
    @IBOutlet weak var folder11: UIButton!
    
    
    @IBAction func folder1(_ sender: Any) {
        let alert = UIAlertController(title: "Warning", message: "This does not currently work as intended", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { [weak alert] (_) in
            self.performSegue(withIdentifier: "home", sender: self)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
}

