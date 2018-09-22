//
//  DTVC.swift
//  Save Fuel
//
//  Created by Ashwath Sridhar on 27/01/17.
//  Copyright © 2017 Ashwath. All rights reserved.
//

import UIKit

class DTVC: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var dttableview: UITableView!
   
    var ttrows = ["Pressure cooker saves fuel","Use optimum quantity of water","Reduce the flame on boiling","Soak before cooking","Shallow, wide vessels save fuel","Put lid on heat losses","Small burner saves fuel","Plan your meal timings"]
    
    var ttid = ["dt1","dt2","dt3","dt4","dt5","dt6","dt7","dt8"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dttableview.delegate = self
        dttableview.dataSource = self
        
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
