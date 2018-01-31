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

class MainPresenter{
    var view: MainView!
    
    private let provider = MoyaProvider<ApiManager>()
    
    func attachView(view: MainView) {
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
                    let model = Mapper<MainModel>().map(JSON: response as! [String : Any])!
                    self.view.getPost(model: model)
                    self.detachView()
                case .error(let error):
                    // handle the error
                    print(error)
                }
            })
    }
}

