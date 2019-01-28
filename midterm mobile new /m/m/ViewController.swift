//
//  ViewController.swift
//  m
//
//  Created by 刘星 on 3/21/18.
//  Copyright © 2018 Xing Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet var rstLabel1:UILabel!
      @IBOutlet var rstLabel2:UILabel!
    @IBOutlet var img:UIImageView!
   
     var types:[String] = ["Eye Cream","Foudation","Lipstick","Perfume","Sunscreen"]

     var brands:[String] = ["Lancome","Estee Lauder","Chanel"]
    
    var curType: String?
    var curBrand:String?
    var indexB: Int=0
    var indexT: Int=0
    var indexP: Int=0
    
    
    
    
    
    @IBAction func submit(sender: AnyObject){
        
    indexB = Int(arc4random_uniform(3))
        indexP = 3 * indexT + indexB
        
        rstLabel1.text = "Recommendation:"
        rstLabel2.text = "\(curType ?? types[indexT]) of \(curBrand ?? brands[indexB])."
        img.image = UIImage(named:String(indexP))
        
        
    }
    
    
    
    

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       
            return types[row]

        }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component:Int){
     
            curType = types[row]
            indexT = row
    }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {

            return types.count
     
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

