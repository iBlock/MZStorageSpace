//
//  MZHomeTableHeaderView.swift
//  MZStorageSpace
//
//  Created by iBlock on 15/9/20.
//  Copyright © 2015年 iBlock. All rights reserved.
//

import UIKit

protocol MZHomeTableHeaderViewDelegate {
    func clickHeadView()
}

class MZHomeTableHeaderView: UIView {
    
    /// 标题
    var titleText: String {
        get {
            return self.titleText
        }
        set(newValue) {
            maskButton.setTitle(newValue, forState: .Normal)
        }
    }

    var isUpdateConstraints: Bool = false
    var isOpend: Bool = false
    var bottomLineView: UIView!
    var maskButton: UIButton!
    var delegate: MZHomeTableHeaderViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildView()
        setNeedsUpdateConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    //MARK: - 构建界面
    
    func buildView() {
        bottomLineView = UIView.newAutoLayoutView()
        addSubview(bottomLineView)
        bottomLineView.backgroundColor = UIColor.grayColor()
        
        maskButton = UIButton(type: .Custom)
        maskButton.contentEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0)
        maskButton.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0)
        maskButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        maskButton.contentHorizontalAlignment = .Left
        maskButton.setBackgroundImage(UIImage(named: "buddy_header_bg"), forState: .Normal)
        maskButton.setBackgroundImage(UIImage(named: "buddy_header_bg_highlighted"), forState: .Highlighted)
        maskButton.setImage(UIImage(named: "buddy_header_arrow"), forState: .Normal)
        maskButton.addTarget(self, action: Selector("headBtnClick"), forControlEvents: .TouchUpInside)
        addSubview(maskButton)
    }
    
    override func updateConstraints() {
        if (!isUpdateConstraints) {
            isUpdateConstraints = true
            bottomLineView.autoPinEdgesToSuperviewEdgesWithInsets(UIEdgeInsetsZero, excludingEdge: .Top)
            bottomLineView.autoSetDimension(.Height, toSize: 0.5)
            maskButton.autoPinEdgesToSuperviewEdgesWithInsets(UIEdgeInsetsZero)
        }
        super.updateConstraints()
    }

    //MARK: - Respone/Event
    
    func headBtnClick() {
        isOpend = !isOpend
        delegate?.clickHeadView()
    }
    
    
    override func didMoveToSuperview() {
        maskButton.imageView?.transform = isOpend ? CGAffineTransformMakeRotation(CGFloat(M_PI_2)) : CGAffineTransformMakeRotation(CGFloat(0))
    }
    
    
    
    
    
    
    
    
}
