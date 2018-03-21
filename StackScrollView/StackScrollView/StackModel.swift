//
//  StackModel.swift
//  StackScrollView
//
//  Created by ireliad on 2018/3/21.
//  Copyright © 2018年 正辰科技. All rights reserved.
//

import UIKit

class StackModel: NSObject {
    var title: String?
    var desc: String?
    var imageUrl: String?
    
    init(title:String, desc:String, imageUrl:String) {
        self.title = title
        self.desc = desc
        self.imageUrl = imageUrl
    }
}
