//
//  BaseView.swift
//  whotIOS
//
//  Created by Sapido on 2018/1/23.
//  Copyright © 2018年 Whot inc. All rights reserved.
//

import Foundation
protocol BaseView {
    func showLoading()
    func hideLoading()
    func showMessage(message:String)
    func onRefreshView()
}
