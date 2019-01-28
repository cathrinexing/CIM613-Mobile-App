//
//  ViewController.swift
//  currency convert
//
//  Created by 刘星 on 3/5/18.
//  Copyright © 2018 Xing Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
       @IBOutlet var mountMoney:UITextField!
     @IBOutlet var convertMoney:UILabel!
    var countries:[String] = ["China(CNY)","France(EUR)","Great Britian(GBP)","Japan(JPY)"]
    
    var rates:[Float] = [6.35,0.81,0.72,106.18]
  
    var curCountries: String?
    var curRates: Float = 0.0
    var mount: Float = 0.0
    var result: Float = 0.0
 
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    
            return countries[row]
       
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component:Int){
        
            curCountries = countries[row]
        curRates=rates[row]
        
    }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return countries.count
        
    
        
    }

    @IBAction func convert(sender:AnyObject){
      


        if  let inText = mountMoney.text,!inText.isEmpty {
            if let mount = Float(inText) {
                result = mount * curRates
                convertMoney.text =  String(mount) + "USD = " + String(result)
            }else {
                convertMoney.text = "???"
            }

        } else {
            convertMoney.text = "???"
        }
      
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

