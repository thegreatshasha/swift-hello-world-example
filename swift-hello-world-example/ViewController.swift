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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sayButtonTapped(sender: AnyObject) {
        label.text = "Hello World!"
    }

}

