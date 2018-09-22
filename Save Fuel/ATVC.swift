//
//  ATVC.swift
//  Save Fuel
//
//  Created by Ashwath Sridhar on 30/01/17.
//  Copyright © 2017 Ashwath. All rights reserved.
//

import UIKit

class ATVC: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
   
    @IBOutlet weak var atttableview: UITableView!
    var ttrows = ["Know your tractor","Stop Diesel leaks","Turn off engine when stopped","Dirt is Engine's enemy","Worn out tyres reduce pulling","Plan your field run"]
    
    var ttid = ["at1","at2","at3","at4","at5","at6"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        atttableview.delegate = self
        atttableview.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ttrows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tcell = UITableViewCell()
        tcell.textLabel?.text = ttrows[indexPath.row]
        return tcell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let v1 = ttid[indexPath.row]
        let v2 = storyboard?.instantiateViewController(withIdentifier: v1)
        self.navigationController?.pushViewController(v2!, animated: true)
    }
    
}
