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

    @IBAction func PushButton(_ sender: Any) {
        let textField1 = Float(textField1.text ?? "") ?? 0
        let textField2 = Float(textField2.text ?? "") ?? 0

        if calculatedControl.selectedSegmentIndex == 0 {
            label.text = String(textField1 + textField2) //なんでFloat型使えないの
        }else if calculatedControl.selectedSegmentIndex == 1 {
            label.text = String(textField1 - textField2)
        }else if calculatedControl.selectedSegmentIndex == 2 {
            label.text = String(textField1 * textField2)
        }else if calculatedControl.selectedSegmentIndex == 3 {
            label.text = String(textField1 / textField2)
            if textField1 == 0||textField2 == 0 {
                label.text = "割る数には0以外を入力してください"
            }
        }
    }
}


