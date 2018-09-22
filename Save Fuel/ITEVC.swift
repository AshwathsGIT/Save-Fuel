//
//  ITEVC.swift
//  Save Fuel
//
//  Created by Ashwath Sridhar on 04/02/17.
//  Copyright © 2017 Ashwath. All rights reserved.
//

import UIKit

class ITEVC: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    @IBOutlet weak var itetableview: UITableView!
    var ttrows = ["General","Illumination","Air Conditioning","Cooling Towers"]
    
    var ttid = ["itet1","itet2","itet3","itet4","itet5","itet6"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itetableview.delegate = self
        itetableview.dataSource = self
        
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
