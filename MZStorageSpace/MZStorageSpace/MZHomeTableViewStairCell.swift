//
//  MZHomeTableViewStairCell.swift
//  MZStorageSpace
//
//  Created by iBlock on 15/9/20.
//  Copyright © 2015年 iBlock. All rights reserved.
//  首页一级菜单

import UIKit

class MZHomeTableViewStairCell: UITableViewCell {
    
    let secondLevelItem: NSArray = ["剪刀","透明胶","指甲嵌"]
    let isOpenSecondLevel: Bool = false

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
