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
    @IBOutlet weak var onehundredLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var onehundred2Label: UILabel!
    
    var currentValue: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.numberLabel.text = "1"
        self.onehundred2Label.text = "100"
        self.slideLabel.text = "Slide as Close as you can to:"
        self.onehundredLabel.text = "100"
    }

    @IBAction func myGuessButtonPressed(_ sender: Any) {
        
        let message = "The value is: \(currentValue)"
        
        let alert = UIAlertController(title: "Hello World", message: message , preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
            alert.addAction(action)
        
            present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func slidermoved(_ sender: Any) {
        
        print("The value of the slider is:\(slider.value)")
        
        currentValue = lroundf(slider.value)
        
        
    }
    
    
    
    
    
    
}

