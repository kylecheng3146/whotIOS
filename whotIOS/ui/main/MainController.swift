//
//  ViewController.swift
//  whotIOS
//
//  Created by Sapido on 2017/12/27.
//  Copyright © 2017年 Whot inc. All rights reserved.
//

import UIKit
import Moya
import RxSwift

class MainController: BaseController , MainView{
    
    @IBOutlet var btn: UIButton!
    
    private let presenter = MainPresenter()
    
    override func initView() {
        
        presenter.attachView(view: self)
        btn.addTarget(
            self,
            action: #selector(onLoginClick),
            for: .touchUpInside)
    }
    
    func onRefreshView() {
        //
    }
    
    func getPost(model: MainModel) {
        
        print(model.name! as String)
    }
    
    @objc func onLoginClick() {
    
        presenter.fetchData()
    }
}

