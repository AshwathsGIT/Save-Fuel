//
//  IVC.swift
//  Save Fuel
//
//  Created by Ashwath Sridhar on 04/02/17.
//  Copyright © 2017 Ashwath. All rights reserved.
//

import UIKit

class IVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    @IBOutlet weak var ittableview: UITableView!
    var trrows = ["Tips","Savings Calculator","Visual Tip"]
    
    var trid = ["it","is","iv"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ittableview.delegate = self
        ittableview.dataSource = self
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trrows.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = trrows[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let v1 = trid[indexPath.row]
        let v2 = storyboard?.instantiateViewController(withIdentifier: v1)
        self.navigationController?.pushViewController(v2!, animated: true)
    }
}
