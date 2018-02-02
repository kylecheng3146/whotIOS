//
//  BaseController.swift
//  whotIOS
//
//  Created by Sapido on 2018/1/23.
//  Copyright © 2018年 Whot inc. All rights reserved.
//

import UIKit
class BaseController: UIViewController {
    
    let loadingView = UIView()
    let spinner = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showLoading() {
        showActivityIndicator()
    }
    
    func hideLoading() {
        hideActivityIndicator()
    }
    
    func showMessage(message: String) {
        CommonUtils.showToast(view: self.view, message: message)
    }
    
    func initView(){}
    
    /**
     * show loading
     */
    func showActivityIndicator() {
        //async
        DispatchQueue.main.async() {
            self.loadingView.frame = CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0)
            self.loadingView.center = self.view.center
            self.loadingView.backgroundColor = UIColor.darkGray
            self.loadingView.alpha = 0.7
            self.loadingView.clipsToBounds = true
            self.loadingView.layer.cornerRadius = 10
            
            self.spinner.frame = CGRect(x: 0.0, y: 0.0, width: 80.0, height: 80.0)
            self.spinner.center = CGPoint(x:self.loadingView.bounds.size.width / 2, y:self.loadingView.bounds.size.height / 2)
            
            self.loadingView.addSubview(self.spinner)
            self.view.addSubview(self.loadingView)
            self.spinner.startAnimating()
        }
    }
    
    /**
     * hide loading
     */
    func hideActivityIndicator() {
        //async
        DispatchQueue.main.async() {
            //stop
            self.spinner.stopAnimating()
            //remove activityindicator
            self.loadingView.removeFromSuperview()
        }
    }
}
