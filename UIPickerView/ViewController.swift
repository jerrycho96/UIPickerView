//
//  ViewController.swift
//  UIPickerView
//
//  Created by D7703_26 on 2018. 4. 19..
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    @IBOutlet weak var myPickerView: UIPickerView!
    
    @IBOutlet weak var lbl1: UILabel!
    
    @IBOutlet weak var lbl2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //delegate와 ViewController 연결
        myPickerView.delegate = self
        myPickerView.dataSource = self
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return 10
        } else {
            return 100
        }
    }
        
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return "First \(row)"
        } else {
            return "Second \(row)"
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0 {
            lbl1.text = "First \(row)"
        } else {
            lbl2.text = "Second \(row)"
        }
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 50
    }
    }






