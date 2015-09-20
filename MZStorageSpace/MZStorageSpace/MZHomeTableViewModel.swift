//
//  MZHomeTableViewModel.swift
//  MZStorageSpace
//
//  Created by iBlock on 15/9/20.
//  Copyright © 2015年 iBlock. All rights reserved.
//

import UIKit

class MZHomeTableViewModel: NSObject, UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        let count = MZHomeStorageModel().headerTitleNameList.count
        return count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("homeStairCell", forIndexPath: indexPath)
        
        return cell
    }
}
