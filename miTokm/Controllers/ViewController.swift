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
    @IBOutlet weak var ResultMileKm: UILabel!
    
    let pickertext = ["MI","KM"]
    var pickerView = UIPickerView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
        textcal.inputView = pickerView
        textcal.textAlignment = .center
        
    let BtnBlue = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width , height: 70))
        
        BtnBlue.backgroundColor = .blue
        BtnBlue.setTitle("Cal", for: .normal )
        BtnBlue.setTitleColor( .white , for: .normal)
        BtnBlue.addTarget(self , action: #selector(ViewController.calmileTokm), for: .touchUpInside )
    
        
        // get data from text //
        Inputnum.inputAccessoryView = BtnBlue
        textcal.inputAccessoryView = BtnBlue
        
        //ResultMileKm.text =  textcal.text
        
        ResultMileKm.text = "AAAA"
    }
    
    @objc func calmileTokm() {
        if let Inputnum = Inputnum.text , let textcal  = textcal.text {
            if let calfunction = Double(Inputnum) , let _ = Double(textcal){
                view.endEditing(true)
                ResultMileKm.isHidden = false
                ResultMileKm.text = "\(logic_cal.get_logic_cal(forInput: calfunction ))"
            }
        }
            
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



