//
//  ViewController.swift
//  PickerviewIntro
//
//  Created by Lin LaMonte on 2/28/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    //array variable: a collection of values
    var pickerValues = ["Alpha", "Beta", "Gamma", "Delta"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        //said code: need to write a return statement.
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerValues.count
       
        //.count tells how much is in value, in this case rows
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        pickerValues[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        view.endEditing(true)
        
        switch row
        {
        case 0: textField.text = "A"
            
        case 1: textField.text = "B"
            
        case 2: textField.text = "C"
            
        case 3: textField.text = "D"
            
        default: textField.text = "No Segement Selected"
            
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pickerView.dataSource = self
        pickerView.delegate = self
        
    }


}

