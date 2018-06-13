//
//  MainPresenter.swift
//  whotIOS
//
//  Created by Sapido on 2018/1/23.
//  Copyright © 2018年 Whot inc. All rights reserved.
//
import RxSwift
import Moya
import ObjectMapper

class LoginPresenter{
    var view: LoginView!
    
    private let provider = MoyaProvider<ApiManager>()
    
    func attachView(view: LoginView) {
    self.view = view
    }

    func detachView() {
    self.view = nil
    }
    
    func fetchData() {
        view.showLoading()
        provider.rx.request(.login).filterSuccessfulStatusCodes()
            .mapJSON()
            .subscribe({ event in
                switch event {
                case .success(let response):
                    let model = Mapper<LoginModel>().map(JSON: response as! [String : Any])!
                    self.view.getPost(model: model)
                case .error(let error):
                    // handle the error
                    self.view.showMessage(message: "連線錯誤:\(error)")
                }
                self.view.hideLoading()
            })
    }
}

