//
//  MainView.swift
//  whotIOS
//
//  Created by Sapido on 2018/1/23.
//  Copyright © 2018年 Whot inc. All rights reserved.
//

import Foundation
protocol MainView : BaseView{
    func getPost(carts: [MainModel])
    func onLoginClick()
}
