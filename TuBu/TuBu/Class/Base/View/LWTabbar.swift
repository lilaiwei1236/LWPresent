//
//  LWTabbar.swift
//  TuBu
//
//  Created by 李来伟 on 2017/4/22.
//  Copyright © 2017年 李来伟. All rights reserved.
//

import UIKit
enum ItemType:Int {
    case ItemTypeLive ,ItemTypeMe//直播，我的
}

protocol LWTabbarDelegate:NSObjectProtocol,UITableViewDelegate{
    func tabbar(_ tabar:LWTabbar,didClick index:UInt)
}
class LWTabbar: UIView {

    weak var delegate:LWTabbarDelegate?
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
  
//    fileprivate lazy var tabBgImageV:UIImageView = {
//    
//        let tabBgImageV = UIImageView(frame: <#T##CGRect#>)
//        
//    }()
}
