//
//  ViewController.swift
//  MyTableViewProject
//
//  Created by Salman on 09/05/18.
//  Copyright © 2018 Salman. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    var fruits = ["Apple", "Apricot", "Banana", "Blueberry", "Cantaloupe", "Cherry",
                  "Clementine", "Coconut", "Cranberry", "Fig", "Grape", "Grapefruit",
                  "Kiwi fruit", "Lemon", "Lime", "Lychee", "Mandarine", "Mango",
                  "Melon", "Nectarine", "Olive", "Orange", "Papaya", "Peach",
                  "Pear", "Pineapple", "Raspberry", "Strawberry"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cells = tableView.dequeueReusableCell(withIdentifier: "cells", for: indexPath) as! CellView
        
        cells.myLabelView?.text=fruits[indexPath.row]
        return cells
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(fruits[indexPath.row])
        let fruitsDetailsViewcontroller = self.storyboard?.instantiateViewController(withIdentifier: "FruitsDetailsViewcontroller") as! FruitsDetailsViewcontroller
        fruitsDetailsViewcontroller.strFruitLabel = fruits[indexPath.row]
        self.navigationController?.pushViewController(fruitsDetailsViewcontroller, animated: true)

    }
    
}

