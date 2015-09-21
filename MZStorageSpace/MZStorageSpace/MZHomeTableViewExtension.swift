//
//  MZHomeTableViewExtension.swift
//  MZStorageSpace
//
//  Created by iBlock on 15/9/20.
//  Copyright © 2015年 iBlock. All rights reserved.
//

import UIKit

extension MZHomePageVC {
    internal func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
    {
        let headerView = MZHomeTableHeaderView()
        headerView.delegate = self
        headerView.titleText = MZHomeStorageModel().headerTitleNameList[section]
        return headerView
    }
    
    internal func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 44
    } 
    
    internal func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
    {
        return 60
    }
    
    func clickHeadView() {
        homeTableView.reloadData()
    }
}
