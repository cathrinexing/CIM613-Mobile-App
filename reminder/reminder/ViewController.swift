//
//  ViewController.swift
//  reminder
//
//  Created by 刘星 on 3/19/18.
//  Copyright © 2018 Xing Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var inputtxt: UITextField!
    @IBOutlet var Label:UILabel!
    @IBOutlet var Picker:UIDatePicker!
    
    
    

    @IBAction func submitPressed(sender: AnyObject){
        Label.text = inputtxt.text! + "\(Picker.date)"


    }

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

//    func createDatePicker(){
//        picker.datePickerMode = .date
//    }

    
    
    
    
}

