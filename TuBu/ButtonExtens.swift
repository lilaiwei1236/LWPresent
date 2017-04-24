//
//  ButtonExtens.swift
//  TuBu
//
//  Created by Ez_QMS on 17/4/24.
//  Copyright © 2017年 李来伟. All rights reserved.
//

import UIKit

extension UIButton
{
    //MARK: ------扩展button
    enum HHButtonEdgeInsetsStyle: Int {
        case top = 1 //image在上，lebel在下
        case left    //image在左，lebel在右
        case bottom  //image在下，lebel在上
        case right   //image在右，lebel在左
    }
    
    func layoutButtonWithEdgesInsetsStyleWithSpace(_ style : HHButtonEdgeInsetsStyle, space : CGFloat) {
        //首先得到imageView和titleLabel的宽高
        let imageWith = self.imageView?.frame.size.width
        let imageHeight = self.imageView?.frame.size.height
        var labelWith : CGFloat = 0
        var labelHeight : CGFloat = 0
        if kIOS8 == 1 {
            //由于ios8中titleLabel的size是0，用下面的这种设置
            labelWith = (self.titleLabel?.intrinsicContentSize.width)!
            labelHeight = (self.titleLabel?.intrinsicContentSize.height)!
        }else{
            labelWith = (self.titleLabel?.frame.size.width)!
            labelHeight = (self.titleLabel?.frame.size.height)!
        }
        var imageEdgeInsets = UIEdgeInsets.zero
        var labelEdgeInsets = UIEdgeInsets.zero
        //根据style和space得到imageEdgeInsets和labelEdgeInsets的值
        switch style {
        case .top:
            imageEdgeInsets = UIEdgeInsetsMake(-labelHeight - space / 2, 0, 0, -labelWith)
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith!+5, -imageHeight! - space / 2, 0)
        case .left:
            imageEdgeInsets = UIEdgeInsetsMake(0, -space / 2, 0, space / 2)
            labelEdgeInsets = UIEdgeInsetsMake(0, space / 2, 0, -space / 2)
        case .bottom:
            imageEdgeInsets = UIEdgeInsetsMake(0, 0, -labelHeight - space / 2, -labelWith)
            labelEdgeInsets = UIEdgeInsetsMake(-imageHeight! - space / 2, -imageWith!, 0, 0)
        default:
            imageEdgeInsets = UIEdgeInsetsMake(0, labelWith + space / 2, 0, -labelWith - space / 2)
            labelEdgeInsets = UIEdgeInsetsMake(0, -imageWith! - space / 2, 0, imageWith! + space / 2)
        }
        self.titleEdgeInsets = labelEdgeInsets
        self.imageEdgeInsets = imageEdgeInsets
    }
}
