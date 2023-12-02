//
//  ViewController.swift
//  tomoEng11Kadai3
//
//  Created by 井本智博 on 2023/11/26.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var label1: UILabel!
    @IBOutlet private weak var label2: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private weak var switch1: UISwitch!
    @IBOutlet private weak var switch2: UISwitch!


    override func viewDidLoad() {
        super.viewDidLoad()
        textField1.keyboardType = .numberPad
        textField2.keyboardType = .numberPad
    }

    @IBAction func buttonPressed(_ sender: Any) {

        let inputNumber1 = Int(textField1.text ?? "") ?? 0
        let inputNumber2 = Int(textField2.text ?? "") ?? 0

        let invertedNumber1: Int
        if switch1.isOn {
            invertedNumber1 = -inputNumber1
        } else {
            invertedNumber1 = inputNumber1
        }

        let invertedNumber2: Int
        if switch2.isOn {
            invertedNumber2 = -inputNumber2
        } else {
            invertedNumber2 = inputNumber2
        }

        label1.text = String(invertedNumber1)
        label2.text = String(invertedNumber2)
        resultLabel.text = String(invertedNumber1 + invertedNumber2)
    }
}
