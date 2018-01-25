//
//  MainPresenter.swift
//  whotIOS
//
//  Created by Sapido on 2018/1/23.
//  Copyright © 2018年 Whot inc. All rights reserved.
//

class MainPresenter{
    var view: MainView!
    
    func attachView(view: MainView) {
    self.view = view
    }
    
    func detachView() {
    self.view = nil
    }
    
    func fetchData() {
        view.showLoading()
        
    }
}

