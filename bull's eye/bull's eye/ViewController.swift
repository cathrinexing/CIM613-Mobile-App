//
//  ViewController.swift
//  bull's eye
//
//  Created by 刘星 on 2/19/18.
//  Copyright © 2018 Xing Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue:Int=50
    var targetValue: Int = 0
    @IBOutlet var targetLabel:UILabel!
    @IBOutlet var scoreLabel:UILabel!
    @IBOutlet var  slider:UISlider!
    var totalPoints: Int = 0
    var currentRound: Int = 0
    @IBOutlet var roundLabel: UILabel!
   
 
    
    @IBAction func sliderMoved(_ slider:UISlider){
        print("The value of the slider is now:\(slider.value)")
        currentValue=lroundf(slider.value)
    }
    
    
    
    @IBAction func showAlert(){
        let difference = calulateScore()
        let score = 100 - difference
        
        totalPoints = totalPoints + score
        currentRound = currentRound + 1
        
        let message = "The value of the slider is now:\(currentValue)"
            +  "\nThe value of the target is: \(targetValue)"
            +  "\nYou scored \(score) points!"
        
        
        let alert = UIAlertController(title:"alert",message:message, preferredStyle: .alert)
        let action = UIAlertAction(title:"OK", style: .default, handler:nil)
        alert.addAction(action)
        present(alert,animated: true, completion: nil)
        scoreLabel.text=String(totalPoints)
        roundLabel.text = String(currentRound)
     
    }
    func calulateScore()->Int{
    var difference: Int = 0
    difference = abs(targetValue - currentValue)
        return difference
        
    }
    
    
    @IBAction func startOver(){
        slider.value = 50
        targetValue = 1+Int(arc4random_uniform(100))
        targetLabel.text = String(targetValue)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        targetValue = 1+Int(arc4random_uniform(100))
       targetLabel.text = String(targetValue)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

