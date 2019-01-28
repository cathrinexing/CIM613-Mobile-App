//
//  ViewController.swift
//  pickerview
//
//  Created by 刘星 on 2/28/18.
//  Copyright © 2018 Xing Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
 

    var activities:[String] = ["wonddering","sleeping","eating","working","thinking","crying","begging","leaving","shopping","coding"]

    var feelings:[String] = ["aweasome","sad","happy","ambivalent","nauseous","pyshed","confused","hopeful","anxious"]
    
    var curActivity: String?
    var curFeeling:String?
    
    @IBAction func sendEmail(sender: AnyObject){

        let message = "I'm \(curActivity ?? activities[0]) and feeling \(curFeeling ?? feelings[0]) about it."
      
        let alert = UIAlertController(title:"InstaEmail", message:message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title:"OK",style: .default) {(action)-> Void in}
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
        
    }
    
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return activities[row]
        }else{
            return feelings[row]
    }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component:Int){
        if component == 0 {
            curActivity = activities[row]
        }else {
            curFeeling = feelings[row]
        }
    }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return activities.count
        }else {
            return feelings.count

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

