//
//  TSVC.swift
//  Save Fuel
//
//  Created by Ashwath Sridhar on 26/01/17.
//  Copyright © 2017 Ashwath. All rights reserved.
//

import UIKit

class TSVC: UIViewController ,UITextFieldDelegate{
    
    
   
    @IBOutlet weak var sltext: UITextField!
    
    @IBOutlet weak var sctext: UITextField!
    
    @IBOutlet weak var savedl: UILabel!
   
    @IBOutlet weak var savedc: UILabel!
    
    
    
    var a1 = 0
    var a2 = 0
    var a3 = 0
    var a4 = 0
    
    @IBOutlet weak var cbox1: UIButton!
    @IBOutlet weak var cbox2: UIButton!
    @IBOutlet weak var cbox3: UIButton!
    @IBOutlet weak var cbox4: UIButton!
    
    
    
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
            a1 = 5
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
            a2 = 5
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
            a3 = 5
        }else{
            a3 = 0
        }

    }
    
    @IBAction func chbox4(_ sender: UIButton) {
        
        if IsBoxClicked == true{
            
            IsBoxClicked = false
            cbox4.setImage(boxoff, for: UIControlState.normal)
        }else{
            
            IsBoxClicked = true
            
        }
        if IsBoxClicked == true{
            
            cbox4.setImage(boxon, for: UIControlState.normal)
            a4 = 5
        }else{
            a4 = 0
        }

    }
    
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func calc(_ sender: Any) {
        
        let a = Float(sltext.text!)!
        let b = Float(sctext.text!)!
        let c1 = Float(a1+a2+a3+a4)
        let c = round((a * (c1/100))*100)/100
        let d = round((c * b)*100)/100
        let e = String(c)
        let f = String(d)
        
        savedl.text = "\(e)L"
        savedc.text = "Rs.\(f)0"
        
        
    }
    
    
    


}
