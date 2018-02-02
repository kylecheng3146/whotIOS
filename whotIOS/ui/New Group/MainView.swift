//
//  MainView.swift
//  whotIOS
//
//  Created by Sapido on 2018/2/2.
//  Copyright © 2018年 Whot inc. All rights reserved.
//

import Foundation
protocol MainView : BaseView{
    func getPost(model: LoginModel)
    func onLoginClick()
}

