//
//  BaseController.swift
//  whotIOS
//
//  Created by Sapido on 2018/1/23.
//  Copyright © 2018年 Whot inc. All rights reserved.
//

import UIKit
class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func showLoading() {
        //
    }
    
    func hideLoading() {
        //
    }
    
    func showMessage(message: String) {
        CommonUtils.showToast(view: self.view, message: message)
    }
}
