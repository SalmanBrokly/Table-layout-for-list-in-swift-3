//
//  FruitsDetailsViewcontroller.swift
//  MyTableViewProject
//
//  Created by Salman on 09/05/18.
//  Copyright © 2018 Salman. All rights reserved.
//

import UIKit

class FruitsDetailsViewcontroller: UIViewController {
    @IBOutlet var fruitLabel:UILabel?
    var strFruitLabel = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
self.fruitLabel?.text=strFruitLabel
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
