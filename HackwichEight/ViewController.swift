//
//  ViewController.swift
//  HackwichEight
//
//  Created by kat on 3/10/20.
//  Copyright © 2020 kat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var slideLabel: UILabel!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var onehundred2Label: UILabel!
    
    var currentValue: Int = 0
    
    //HW8 Part3, Part 2
    
    var targetValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.numberLabel.text = "1"
        self.onehundred2Label.text = "100"
        self.slideLabel.text = "Slide as Close as you can to:"
        self.targetLabel.text = "100"
        
        currentValue = lroundf(slider.value)
        targetValue = Int.random(in: 0...100)
        
        //call the function
        startNewRound()
        
    }
    
    
    @IBAction func myGuessButtonPressed(_ sender: Any) {
        
        let message = "The value is: \(currentValue)" + "\n The target value is: \(targetValue)"
        
        let alert = UIAlertController(title: "Hello World", message: message , preferredStyle: .alert)
        
        let action = UIAlertAction(title: "New Round", style: .default, handler: nil)
        
            alert.addAction(action)
        
            present(alert, animated: true, completion: nil)
        
            //part 3-4 Part 3 #3-5
            startNewRound()
        
    }
    
    @IBAction func slidermoved(_ sender: Any) {
        
        print("The value of the slider is:\(slider.value)")
        currentValue = lroundf(slider.value)
        
        
    }
    //Part 3 & 4 Part 3: Create new round function
    func startNewRound(){
        
        targetValue = Int.random(in: 0...100)
        currentValue = lroundf(slider.value)
        
    }
    //Problem set 1
    func updatetargetLabel(){
        
        //set targetLabel to display the targetValue
        self.targetLabel.text = String(targetValue)
        
    }
    
    
    
}


