//
//  ViewController.swift
//  swift-hello-world-example
//
//  Created by Mubae Wakasugi on 2014/08/18.
//  Copyright (c) 2014年 STILLILL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var stepperText: UILabel!
    
    var num1 = Int(arc4random_uniform(500))
    var num2 = Int(arc4random_uniform(500)) + 500
    var answer = 0
    var symbol = ":D"
    let array = ["+", "-", "*"]
    var randomIndex = -1
    var problemText = ""
    var difficulty = 2
    var diff = 2
    var timerCount = 0
    var timerLimit = 10
    var timerActive = true
    
    
    @IBAction func stepperValueChanged(sender: AnyObject) {
        difficulty = Int(stepper.value)
        stepperText.text = "\(stepper.value)"
        refresh()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        refresh()
        stepper.value = 2.0
        stepperText.text = "\(stepper.value)"
        
        var timer = NSTimer.scheduledTimerWithTimeInterval(0.6, target: self, selector:Selector("toggleText"), userInfo: nil, repeats: true)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sayButtonTapped(sender: AnyObject) {
       refresh()
    }
    
    func calculateDiff() {
        switch(randomIndex) {
        case 0:
            diff = 2 * difficulty
        case 1:
            diff = 2 * difficulty
        case 2:
            diff = difficulty
        default:
            diff = 0
        }
    }
    
    func refresh(){
        switch(randomIndex) {
        case 0:
            answer = num2 + num1
        case 1:
            answer = num2 - num1
        case 2:
            answer = num2 * num1
        default:
            print("lol")
        }
        // Todo flashing text
        // Todo session summary
        // Todo persistent performance storage
        // Todo
        
        if(randomIndex != -1) {
            var userAnswer = input.text.toInt()
            if(answer == userAnswer) {
                label2.text = "Correct \(problemText) is \(answer)"
            }
            else {
                label2.text = "Sorry \(problemText) is \(answer)"
            }
        }
        
        randomIndex = Int(arc4random_uniform(UInt32(array.count)))
        calculateDiff()
        var diffInt = UInt32(pow(Double(10),Double(diff)))/2
        print(diff)
        
        num1 = Int(arc4random_uniform(diffInt))
        num2 = Int(arc4random_uniform(diffInt) + diffInt)
        symbol = array[randomIndex]
        problemText = String(num2) + symbol + String(num1)
        label.hidden = false
        label.text = "What's " + problemText;
        input.text = ""
        
        timerActive = true;
        
    }
    
    func toggleText() {
        if(timerActive){
            if(timerCount < timerLimit) {
                    label.hidden = !label.hidden;
                    timerCount++;
                }
            else {
                timerCount = 0
                label.hidden = true;
                timerActive = false;
            }
        }
    }
    
    override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
        self.view.endEditing(true)
    }

}

