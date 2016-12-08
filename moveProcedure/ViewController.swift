//
//  ViewController.swift
//  moveProcedure
//
//  Created by Sunny on 2016/11/9.
//  Copyright © 2016年 Sunny. All rights reserved.


import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    let file = ["案件一","案件二"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return file.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = file[indexPath.row]
        return cell
    }


}

