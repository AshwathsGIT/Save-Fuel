//
//  ISFVC.swift
//  Save Fuel
//
//  Created by Ashwath Sridhar on 19/02/17.
//  Copyright © 2017 Ashwath. All rights reserved.
//

import UIKit

class ISFVC: UIViewController ,UITextFieldDelegate{
    
    
    
    @IBOutlet weak var savtxt: UITextField!
    @IBOutlet weak var savedtxt: UILabel!
    
    
    
    var a1 = 0
    var a2 = 0
    var a3 = 0
    
    @IBOutlet weak var cbox1: UIButton!
    @IBOutlet weak var cbox2: UIButton!
    @IBOutlet weak var cbox3: UIButton!
    
    
    
    var boxon = UIImage(named: "checked")
    var boxoff = UIImage(named: "unchecked")
    
    var IsBoxClicked = Bool()
    
    override  func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func chbox1(_ sender: UIButton) {
        
        if IsBoxClicked == true{
            
            IsBoxClicked = false
            cbox1.setImage(boxoff, for: UIControlState.normal)
        }else{
            
            IsBoxClicked = true
            
        }
        if IsBoxClicked == true{
            
            cbox1.setImage(boxon, for: UIControlState.normal)
            a1 = 4
        }else{
            a1 = 0
        }
        
    }
    
    
    @IBAction func chbox2(_ sender: UIButton) {
        
        if IsBoxClicked == true{
            
            IsBoxClicked = false
            cbox2.setImage(boxoff, for: UIControlState.normal)
        }else{
            
            IsBoxClicked = true
            
        }
        if IsBoxClicked == true{
            
            cbox2.setImage(boxon, for: UIControlState.normal)
            a2 = 6
        }else{
            a2 = 0
        }
    }
    
    
    @IBAction func chbox3(_ sender: UIButton) {
        
        if IsBoxClicked == true{
            
            IsBoxClicked = false
            cbox3.setImage(boxoff, for: UIControlState.normal)
        }else{
            
            IsBoxClicked = true
            
        }
        if IsBoxClicked == true{
            
            cbox3.setImage(boxon, for: UIControlState.normal)
            a3 = 15
        }else{
            a3 = 0
        }
        
    }
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func calc(_ sender: UIButton) {
        
        let a = Float(savtxt.text!)!
        let c1 = Float(a1+a2+a3)
        let c = round((a * (c1/100))*10)/10
        let e = String(c)
        
        savedtxt.text = "Rs.\(e)0"
        
    }
    
}
