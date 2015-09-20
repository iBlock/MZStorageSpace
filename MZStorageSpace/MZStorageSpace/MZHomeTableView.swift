//
//  MZHomeTableView.swift
//  MZStorageSpace
//
//  Created by iBlock on 15/9/20.
//  Copyright © 2015年 iBlock. All rights reserved.
//

import UIKit

class MZHomeTableView: UITableView {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        separatorStyle = .None
        let empyView = UIView.init(frame: CGRectZero)
        tableFooterView = empyView
    }
    
}
