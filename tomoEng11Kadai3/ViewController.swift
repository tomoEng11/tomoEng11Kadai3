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

        var n1 = 0
        var n2 = 0

        if switch1.isOn {
            n1 = (Int(textField1.text!) ?? 0) * -1
        } else {
            n1 = Int(textField1.text!) ?? 0
        }

        if switch2.isOn {
            n2 = (Int(textField2.text!) ?? 0) * -1
        } else {
            n2 = Int(textField2.text!) ?? 0
        }

        label1.text = String(n1)
        label2.text = String(n2)
        resultLabel.text = String(n1 + n2)
    }
}
