//
//  MZHomePageVC.swift
//  MZStorageSpace
//
//  Created by iBlock on 15/9/18.
//  Copyright © 2015年 iBlock. All rights reserved.
//

import UIKit

class MZHomePageVC: UIViewController, UITableViewDelegate{
    
    @IBOutlet weak var homeTableView: MZHomeTableView!
    var homeTableViewModel: MZHomeTableViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeTableViewModel = MZHomeTableViewModel()
        homeTableView.dataSource = homeTableViewModel
        homeTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "homeStairCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
