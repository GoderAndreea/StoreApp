//
//  ViewController.swift
//  MiraclePill
//
//  Created by Costin Valu on 1/19/18.
//  Copyright © 2018 Andreea Goder. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var countrylabel: UILabel!
    
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var zipTextField: UITextField!
    
    @IBOutlet weak var buyBtn: UIButton!
    @IBOutlet weak var successBtn: UIButton!
    
    
    let states=["Alba","Arad","Arges","Bacau","Bihor","Bistrita-Nasaud","Botosani","Brasov","Braila","Buzau","Calarasi","Cluj","Constanta","Dambovita","Dolj","Galati","Hunedoara","Iasi","Ilfov","Mures","Timis","Valcea","Vrancea"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        successBtn.isHidden = true
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func StateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countrylabel.isHidden = true
        countryTextField.isHidden = true
        zipLabel.isHidden = true
        zipTextField.isHidden = true
        buyBtn.isHidden = true
        
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
        statePickerBtn.setTitle(states[row], for: UIControlState())
        statePicker.isHidden = true
        countrylabel.isHidden = false
        countryTextField.isHidden = false
        zipLabel.isHidden = false
        zipTextField.isHidden = false
        buyBtn.isHidden = false
    }
    
    @IBAction func buybtnPressed(_ sender: Any){
        for view in self.view.subviews as [UIView] {
            view.isHidden = true
        }
        successBtn.alpha = 0
        successBtn.isHidden = false
        UIView.animate(withDuration: 2) {
            self.successBtn.alpha = 1
            
        }
        
    }
 
    @IBAction func successBtnPressed(_ sender: Any) {
        for view in self.view.subviews as [UIView] {
            view.isHidden = false
        }
        successBtn.alpha = 1
        successBtn.isHidden = true
        
        UIView.animate(withDuration: 1) {
            self.successBtn.alpha = 0
        }
        
    }
    
    
    }



