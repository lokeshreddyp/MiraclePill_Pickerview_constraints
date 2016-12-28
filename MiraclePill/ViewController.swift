//
//  ViewController.swift
//  MiraclePill
//
//  Created by lokeshreddy on 12/27/16.
//  Copyright © 2016 lokeshreddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
 
   
    
    @IBOutlet weak var fullNameBTN: UILabel!

    @IBOutlet weak var fullNameTF: UITextField!
    
    @IBOutlet weak var cityLBL: UILabel!
    
    @IBOutlet weak var cityTF: UITextField!
    
    @IBOutlet weak var stateBTN: UIButton!
    
    
    
    @IBOutlet weak var stateLBL: UILabel!
    
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var statePickerBTN: UIButton!
    
    
    @IBOutlet weak var countryLBL: UILabel!
    
    @IBOutlet weak var sucessImg: UIImageView!
    
    @IBOutlet weak var countryTF: UITextField!
    
    @IBOutlet weak var zipcodeTF: UITextField!
    
    @IBOutlet weak var zipcodeLBL: UILabel!
    
    @IBOutlet weak var buynowbtn: UIButton!
    
    @IBOutlet weak var miraclepillIMG: UIImageView!
    
    
    @IBOutlet weak var miraclepilLBL: UILabel!
    
    
    @IBOutlet weak var moneyLBL: UILabel!
     let states = ["telangana" , "andhrapradesh" ,"tamilnadu" , "karnataka"]
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func Buynowbtnpressed(_ sender: Any) {
        sucessImg.isHidden = false
        miraclepilLBL.isHidden = true
        miraclepillIMG.isHidden = true
        moneyLBL.isHidden = true
        countryLBL.isHidden = true
        countryTF.isHidden = true
        zipcodeLBL.isHidden = true
        zipcodeTF.isHidden = true
        buynowbtn.isHidden = true
    
        fullNameTF.isHidden = true
        fullNameBTN.isHidden = true
        cityTF.isHidden = true
        cityLBL.isHidden = true
        stateBTN.isHidden = true
        stateLBL.isHidden = true
        
    }
    

    @IBAction func buttonpressed(_ sender: Any) {
       statePicker.isHidden = false
        countryLBL.isHidden = true
        countryTF.isHidden = true
        zipcodeLBL.isHidden = true
        zipcodeTF.isHidden = true
        buynowbtn.isHidden = true
    }
   
    
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
    }

    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return states[row]
    }

    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    statePickerBTN.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLBL.isHidden = false
        countryTF.isHidden = false
        zipcodeLBL.isHidden = false
        zipcodeTF.isHidden = false
        buynowbtn.isHidden = false
    }
    
}


