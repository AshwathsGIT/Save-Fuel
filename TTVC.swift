//
//  TTVC.swift
//  Save Fuel
//
//  Created by Ashwath Sridhar on 26/01/17.
//  Copyright © 2017 Ashwath. All rights reserved.
//

import UIKit

class TTVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    @IBOutlet weak var tttableview: UITableView!
    var ttrows = ["Drive between 45-55 Km/hr","Keep your Engine Healthy","Drive in the correct gear","Don't wait for the engine to warm up","Good braking habits","Keep your foot off the clutch","Clean air filter regularly","Watch your tyre pressure","Reduce loads"]
     
    var ttid = ["tt1","tt2","tt3","tt4","tt5","tt6","tt7","tt8","tt9"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tttableview.delegate = self
        tttableview.dataSource = self

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
