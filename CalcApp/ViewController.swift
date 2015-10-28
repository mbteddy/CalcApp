//
//  ViewController.swift
//  CalcApp
//
//  Created by Teddy Pappas on 10/21/15.
//  Copyright © 2015 Teddy Pappas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var isTyping = false
    var isTypingFirstNum = true
    var firstNum : Int = 0
    var secondNum : Int = 0
    var operation = ""
    var multiString = ""
    var count = 0
    var isCount = false
    var isAvg = false
    var total = 0
    var isNotFact = true
    var factTotal = 1
    
    
    @IBAction func zero(sender: AnyObject) {
        if isTypingFirstNum && isNotFact {
            firstNum = createNum(0)
        } else if isNotFact {
            secondNum = createNum(0)
        }
    }

    @IBAction func one(sender: AnyObject) {
        if isTypingFirstNum && isNotFact {
            firstNum = createNum(1)
        } else if isNotFact {
            secondNum = createNum(1)
        }
    }
    
    @IBAction func two(sender: AnyObject) {
        if isTypingFirstNum && isNotFact {
            firstNum = createNum(2)
        } else if isNotFact {
            secondNum = createNum(2)
        }
    }
    
    @IBAction func three(sender: AnyObject) {
        if isTypingFirstNum && isNotFact {
            firstNum = createNum(3)
        } else if isNotFact {
            secondNum = createNum(3)
        }
    }
    
    @IBAction func four(sender: AnyObject) {
        if isTypingFirstNum && isNotFact {
            firstNum = createNum(4)
        } else if isNotFact {
            secondNum = createNum(4)
        }
    }
    
    @IBAction func five(sender: AnyObject) {
        if isTypingFirstNum && isNotFact {
            firstNum = createNum(5)
        } else if isNotFact {
            secondNum = createNum(5)
        }
    }
    
    @IBAction func six(sender: AnyObject) {
        if isTypingFirstNum && isNotFact {
            firstNum = createNum(6)
        } else if isNotFact {
            secondNum = createNum(6)
        }
    }
    
    @IBAction func seven(sender: AnyObject) {
        if isTypingFirstNum && isNotFact {
            firstNum = createNum(7)
        } else if isNotFact {
            secondNum = createNum(7)
        }
    }
    
    @IBAction func eight(sender: AnyObject) {
        if isTypingFirstNum && isNotFact {
            firstNum = createNum(8)
        } else if isNotFact {
            secondNum = createNum(8)
        }
    }
    
    @IBAction func nine(sender: AnyObject) {
        if isTypingFirstNum && isNotFact {
            firstNum = createNum(9)
        } else if isNotFact {
            secondNum = createNum(9)
        }
    }
    
    
    @IBAction func add(sender: AnyObject) {
        isTypingFirstNum = false
        operation = "+"
    }
    
    @IBAction func subtract(sender: AnyObject) {
        isTypingFirstNum = false
        operation = "-"
    }
    
    @IBAction func multiply(sender: AnyObject) {
        isTypingFirstNum = false
        operation = "*"
    }
    
    @IBAction func divide(sender: AnyObject) {
        isTypingFirstNum = false
        operation = "/"
    }
    

    @IBAction func mod(sender: AnyObject) {
        isTypingFirstNum = false
        operation = "%"
    }
    
    @IBAction func count(sender: AnyObject) {
        count++
        isCount = true
        multiString = "\(multiString) \(String(Int(firstNum))) Count"
        firstNum = 0
        myLabel.text = multiString
    }
    
    @IBAction func avg(sender: AnyObject) {
        isAvg = true
        count++
        total += firstNum
        myLabel.text = String(Int(firstNum))
        firstNum = 0
    }
    
    @IBAction func fact(sender: AnyObject) {
        isNotFact = false
        for var i = firstNum; i > 1; i-- {
            factTotal = factTotal*i
        }
        myLabel.text = String(Int(factTotal))
        isNotFact = true
        factTotal = 1
        equals("")
    }
    
    @IBAction func equals(sender: AnyObject) {
        if operation == "+" {
            myLabel.text = String(Int(firstNum + secondNum))
        } else if operation == "-" {
            myLabel.text = String(Int(firstNum - secondNum))
        } else if operation == "*" {
            myLabel.text = String(Int(firstNum * secondNum))
        } else if operation == "/" {
            myLabel.text = String(Int(firstNum / secondNum))
        } else if operation == "%" {
            myLabel.text = String(Int(firstNum % secondNum))
        } else if isCount == true {
            myLabel.text = String(Int(count + 1))
        } else if isAvg {
            myLabel.text = String(Int((total+firstNum)/(count+1)))
        } else if !isNotFact {
            myLabel.text = String(Int(factTotal))
        }

        isTypingFirstNum = true
        operation = ""
        firstNum = 0
        secondNum = 0
        multiString = ""
        isCount = false
        isAvg = false
    }
    
    @IBOutlet weak var myLabel: UILabel!
    
    func createNum(digit: Int) -> Int {
        if isTypingFirstNum {
            let fullNum = "\(firstNum)\(digit)"
            myLabel.text = String(Int(fullNum)!)
            return Int(fullNum)!
        } else {
            let fullNum = "\(secondNum)\(digit)"
            myLabel.text = String(Int(fullNum)!)
            return Int(fullNum)!
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

