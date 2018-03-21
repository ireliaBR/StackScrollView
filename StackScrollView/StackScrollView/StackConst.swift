//
//  StackConst.swift
//  StackScrollView
//
//  Created by ireliad on 2018/3/21.
//  Copyright © 2018年 正辰科技. All rights reserved.
//

import UIKit

func UIColorFromRGB(_ rgbValue:Int) -> UIColor {
    return UIColor(red: CGFloat(Float(((rgbValue & 0xFF0000) >> 16))/255.0), green: CGFloat(Float(((rgbValue & 0xFF00) >> 8))/255.0), blue: CGFloat(Float((rgbValue & 0xFF))/255.0), alpha: 1.0);
}

let SCREEN_WIDTH: CGFloat = UIScreen.main.bounds.size.width
let SCREEN_HEIGHT: CGFloat = UIScreen.main.bounds.size.height

//是否是真机
//#define isIPhone
let isIPhone: Bool = {
    return (UI_USER_INTERFACE_IDIOM() == .phone)
}()

//是否是iphoneX
let isIPhoneX: Bool = {
    return (SCREEN_WIDTH >= 375.0 && SCREEN_HEIGHT >= 812.0 && isIPhone)
}()
//底部安全高度
let BOTTOM_SAFE_HEIGHT: CGFloat = (isIPhoneX ? 34 : 0)
//系统手势高度
let SYSTEM_GESTURE_HEIGHT: CGFloat = (isIPhoneX ? 13 : 0)
//tabbar高度
let TABBAR_HEIGHT: CGFloat = (49 + BOTTOM_SAFE_HEIGHT)
//状态栏高度
let STATUS_HEIGHT: CGFloat = (isIPhoneX ? 44 : 20)
//导航栏高
let NAVBAR_HEIGHT: CGFloat = 44
