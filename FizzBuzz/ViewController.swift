//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Diem Phuc Nguyen on 6/19/18.
//  Copyright © 2018 Diem Phuc Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var countNumber: Int = 0;
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var mySmallLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = String(countNumber);
        mySmallLabel.text = String(countNumber);
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        var message: String = "";
        // Moves the small text up by 6 each click by reassigning the position
        if (countNumber<100) {
            // Only increment the value if its less than 100
            countNumber += 1;
            
            var currPos = mySmallLabel.center;
            currPos = CGPoint(x: currPos.x, y: currPos.y - 6);
            mySmallLabel.center = currPos;
        }
        
        if (countNumber%3==0 && countNumber&5==0) {
            message = "FizzBuzz";
        }
        else if (countNumber%3==0) {
            message = "Fizz";
        }
        else if (countNumber%5==0) {
            message = "Buzz";
        }
        else {
            message = String(countNumber);
        }
        // Assign the label's value to the message
        myLabel.text = message;
        // Assign the smaller label's value to the value of the counter
        mySmallLabel.text = String(countNumber);
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

