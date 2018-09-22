//
//  DSVC.swift
//  Save Fuel
//
//  Created by Ashwath Sridhar on 29/01/17.
//  Copyright © 2017 Ashwath. All rights reserved.
//

import UIKit

class DSVC: UIViewController ,UITextFieldDelegate{
    
    
    
    @IBOutlet weak var sdtext: UITextField!
    @IBOutlet weak var sctext: UITextField!
    @IBOutlet weak var savedd: UILabel!
    @IBOutlet weak var savedcm: UILabel!
    @IBOutlet weak var savedcy: UILabel!
    
    
    
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
            a3 = 8
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
            a4 = 4
        }else{
            a4 = 0
        }

    }
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
   
    @IBAction func calc(_ sender: UIButton) {
        
        let a = Float(sdtext.text!)!
        let b = Float(sctext.text!)!
        let c1 = Float(a1+a2+a3+a4)
        let c = round((a * (c1/100))*10)/10
        let c2 = a + c
        let d = round((c * b)*100)/100
        let d1 = round(d * 12)
        let e = String(c2)
        let f = String(d)
        let g = String(d1)
        
        savedd.text = e
        savedcm.text = "Rs.\(f)0"
        savedcy.text = "Rs.\(g)0"

    }
    
    
    
    
}
