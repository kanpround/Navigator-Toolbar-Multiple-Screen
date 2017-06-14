//
//  ViewController.swift
//  Navigator Toolbar Multiple Screen
//
//  Created by Student09 on 6/14/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Implicit
    var intNumber = 1
    
    @IBAction func increaseNumber(_ sender: Any) {
        
        showMessage(strMessage: "Click Increase Number...")
        intNumber += 1
        intNumber = checkNumber(intNumber: intNumber)
        showNumber(intNumber: intNumber)
        showMessage(strMessage: String  (intNumber))
    }
    
    @IBAction func decreaseNumber(_ sender: Any) {
        
        showMessage(strMessage: "Click Decrease Number...")
        //showNumber(intNumber: intNumber)
        
        intNumber -= 1
        intNumber = checkNumber(intNumber: intNumber)
        showNumber(intNumber: intNumber)
        
        showMessage(strMessage: String  (intNumber))
    }
    
    @IBAction func resetNumber(_ sender: Any) {
        
        showMessage(strMessage: "Click Reset Number...")
        //showNumber(intNumber: intNumber)
        intNumber = 1
        intNumber = checkNumber(intNumber: intNumber)
        showNumber(intNumber: intNumber)
        showMessage(strMessage: String  (intNumber))
    }

    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    func showNumber(intNumber: Int) -> Void {
        let strNumber = String(intNumber)
        numberLabel.text = strNumber
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    } // end main method
    
    
    
    func checkNumber(intNumber: Int) -> Int {
        var intResult = intNumber
        
        // At 11
        if intNumber == 11 {
            intResult = -10
        }
        
        // At -11
        if intNumber == -11 {
            intResult = 10
        }
        return intResult
    }
    
    
    func showMessage(strMessage: String) -> Void {
        print("strMessage ==> \(strMessage)")
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

