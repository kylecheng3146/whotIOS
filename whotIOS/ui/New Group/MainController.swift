//
//  MainController.swift
//  whotIOS
//
//  Created by Sapido on 2018/2/2.
//  Copyright © 2018年 Whot inc. All rights reserved.
//
import UIKit
import Moya
import RxSwift

class MainController: BaseController , MainView{
    
    private let presenter = MainPresenter()
    
    override func initView() {
        presenter.attachView(view: self)
    }
    
    func onRefreshView() {
        //
    }
    
    func getPost(model: LoginModel) {
        
        print(model.name! as String)
    }
    
    @objc func onLoginClick() {
        
        presenter.fetchData()
    }
}


