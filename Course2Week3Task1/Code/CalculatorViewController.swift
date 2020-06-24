//
//  CalculatorViewController.swift
//  Course2Week3Task1
//
//  Copyright © 2018 e-Legion. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var operand1Label: UILabel!
    @IBOutlet weak var operand2Label: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func stepperChangeValue(_ sender: UIStepper) {
        let value = NumberFormatter()
        value.minimumFractionDigits = 4
        value.maximumFractionDigits = 4
        operand1Label.text = value.string(from: NSNumber(value: sender.value))
    }
    
    @IBAction func sliderChangeValue(_ sender: UISlider) {
        let value = NumberFormatter()
        value.minimumFractionDigits = 4
        value.maximumFractionDigits = 4
        operand2Label.text = value.string(from: NSNumber(value: sender.value))
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        guard let oper1 = Double(operand1Label.text!), let oper2 = Double(operand2Label.text!) else { return }
        let value = NumberFormatter()
        value.minimumFractionDigits = 0
        value.maximumFractionDigits = 4
        resultLabel.text = value.string(from: NSNumber(value: oper1 * oper2))
    }
    
    override func viewDidLoad() {
        stepper.layer.borderWidth = 2
        stepper.layer.borderColor = UIColor(named: "Elements")?.cgColor
        stepper.layer.cornerRadius = 6
        stepper.layer.masksToBounds = true
        stepper.setDecrementImage(stepper.decrementImage(for: .normal), for: .normal)
        stepper.setIncrementImage(stepper.incrementImage(for: .normal), for: .normal)
        stepper.tintColor = UIColor(named: "Elements")!
        super.viewDidLoad()
    }
}
