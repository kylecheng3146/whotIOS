//
//  MainModel.swift
//  whotIOS
//
//  Created by Sapido on 2018/1/23.
//  Copyright © 2018年 Whot inc. All rights reserved.
//

import ObjectMapper

class LoginModel: Mappable {
    var name: String?
    
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        name <- map["name"]
    }
}
