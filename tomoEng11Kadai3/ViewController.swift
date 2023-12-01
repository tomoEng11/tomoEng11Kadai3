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

    private var n1 = 0
    private var countN1 = 0
    private var n2 = 0
    private var countN2 = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        textField1.keyboardType = .numberPad
        textField2.keyboardType = .numberPad
    }

    @IBAction func switch1Changed(_ sender: UISwitch) {

        countN1 += 1
    }

    @IBAction func switch2Changed(_ sender: UISwitch) {

        countN2 += 1
    }

    @IBAction func buttonPressed(_ sender: Any) {

        if countN1 % 2 == 0 {
            n1 = Int(textField1.text!) ?? 0
        } else {
            n1 = (Int(textField1.text!) ?? 0) * -1
        }

        if countN2 % 2 == 0 {
            n2 = Int(textField2.text!) ?? 0
        } else {
            n2 = (Int(textField2.text!) ?? 0) * -1
        }

        label1.text = String(n1)
        label2.text = String(n2)
        resultLabel.text = String(n1 + n2)
    }
}
