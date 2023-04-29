//
//  ViewController.swift
//  HinakkoKadai2
//
//  Created by 深来日菜 on 2023/04/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var calculatedControl: UISegmentedControl!
    @IBOutlet weak var label: UILabel!

    @IBAction func pushButton(_ sender: Any) {
        let value1 = Float(textField1.text ?? "") ?? 0
        let value2 = Float(textField2.text ?? "") ?? 0

        switch calculatedControl.selectedSegmentIndex {
        case 0:
            label.text = String(value1 + value2) //なんでFloat型使えないの
        case 1:
            label.text = String(value1 - value2)
        case 2:
            label.text = String(value1 * value2)
        case 3:
            if value2 == 0 {
                label.text = "割る数には0以外を入力してください"
            } else {
                label.text = String(value1 / value2)
            }
        default:
            assertionFailure("selectedSegmentIndex is invalid.")
        }
    }
}
