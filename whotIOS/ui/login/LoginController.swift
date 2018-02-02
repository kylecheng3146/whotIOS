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

class LoginController: BaseController , LoginView{
    
    @IBOutlet var btn: UIButton!
    
    private let presenter = LoginPresenter()
    
    override func initView() {
        
        presenter.attachView(view: self)
        btn.addTarget(
            self,
            action: #selector(onLoginClick),
            for: .touchUpInside
        )
        //設定按鈕為無色、邊框
        btn.backgroundColor = .clear
        btn.layer.cornerRadius = 5
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor.black.cgColor
    }
    
    func onRefreshView() {
        //
    }
    
    func getPost(model: LoginModel) {
        present(CommonUtils.nextView(name: "Main", controller: "MainController"), animated: true, completion: nil)
    }
    
    @objc func onLoginClick() {
    
        presenter.fetchData()
    }
}

