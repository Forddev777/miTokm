//
//  ViewController.swift
//  miTokm
//
//  Created by suriya taothongkom on 13/1/2565 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Header_TItle: UILabel!
    @IBOutlet weak var BtnResult: UIButton!
    @IBOutlet weak var numpad: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        Header_TItle.backgroundColor = .blue
        Header_TItle.textColor = .white
      
    
        let numField  = numpad
        if(numField == nil){
            print("no")
        
        }else{
            print("\numField")
        }
        
        
        
        
        
    }
    
    
    
    
    


}

