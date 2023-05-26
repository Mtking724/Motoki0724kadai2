//
//  ViewController.swift
//  Motoki0724kadai2
//
//  Created by Motoki Okayasu on 2023/05/18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var segementedControl: UISegmentedControl!
    @IBOutlet private weak var label: UILabel!
    
    
    @IBAction private func tapButton(_ sender: Any) {
        let number1 = Int(textField1.text ?? "") ?? 0
        let number2 = Int(textField2.text ?? "") ?? 0
        
        switch segementedControl.selectedSegmentIndex {
        case 0:
            label.text = String(number1 + number2)
        case 1:
            label.text = String(number1 - number2)
        case 2:
            label.text = String(number1 * number2)
        case 3:
            if number2 == 0 {
                label.text = "割る数には０以外を入力してください"
            } else {
                label.text =  String(number1 / number2)
            }
        default:
            fatalError("selectedSegmentIndex is invalid.")
        }
    }
}

