//
//  ViewController.swift
//  miTokm
//
//  Created by suriya taothongkom on 13/1/2565 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Inputnum: UITextField!
    @IBOutlet weak var textcal: UITextField!
    let pickertext = ["Miles","Kilometer"]
    
    var pickerView = UIPickerView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        textcal.inputView = pickerView
        textcal.textAlignment = .center
    
    
    }
    
}


extension ViewController: UIPickerViewDelegate ,UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickertext.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickertext[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        textcal.text = pickertext[row]
        textcal.resignFirstResponder()
    }
    
}



