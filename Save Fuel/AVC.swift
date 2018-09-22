//
//  AVC.swift
//  Save Fuel
//
//  Created by Ashwath Sridhar on 30/01/17.
//  Copyright © 2017 Ashwath. All rights reserved.
//

import UIKit

class AVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

   
    @IBOutlet weak var attableview: UITableView!
    var trrows = ["Tips","Visual Tip"]
    
    var trid = ["at","av"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        attableview.delegate = self
        attableview.dataSource = self
        
        
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
