//
//  ViewController.swift
//  tomoEng11Kadai3
//
//  Created by 井本智博 on 2023/11/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var label1: UILabel!
    @IBOutlet private weak var label2: UILabel!
    @IBOutlet private weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        textField1.keyboardType = .numberPad
        textField2.keyboardType = .numberPad
    }

    @IBAction func switch1Changed(_ sender: UISwitch) {

        if let n1 = Int(textField1.text!) {
            textField1.text = String(n1 * -1)
        }
    }

    @IBAction func switch2Changed(_ sender: UISwitch) {

        if let n2 = Int(textField2.text!) {
            textField2.text = String(n2 * -1)
        }
    }
    @IBAction func buttonPressed(_ sender: Any) {

        label1.text = textField1.text!
        label2.text = textField2.text!

        if let n1 = Int(textField1.text!), let n2 = Int(textField2.text!) {

            resultLabel.text = String(n1 + n2)
        }
    }
}
