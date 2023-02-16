//
//  ViewController.swift
//  Tally Counter
//
//  Created by Zane Jones on 2/16/23.
//

import UIKit

class ViewController: UIViewController {
    
    var currentCount = 0
    var incrementAmount = 1
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var incrementLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTexts()
    }

    @IBAction func ResetButton(_ sender: UIButton) {
        currentCount = 0
        incrementAmount = 1
        updateTexts()
    }
    
    @IBAction func increaseCount(_ sender: UIButton) {
        currentCount += incrementAmount
        updateTexts()
    }
    
    @IBAction func decreaseCount(_ sender: UIButton) {
        currentCount -= incrementAmount
        updateTexts()
    }
    
    @IBAction func increaseIncrement(_ sender: UIButton) {
        incrementAmount += 1
        updateTexts()
    }
    
    @IBAction func decreaseIncrement(_ sender: UIButton) {
        incrementAmount -= 1
        updateTexts()
    }
    
    func updateTexts() {
        countLabel.text = String(currentCount)
        incrementLabel.text = String(incrementAmount)
    }
    
}

