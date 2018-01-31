//
//  File.swift
//  whotIOS
//
//  Created by Sapido on 2018/1/25.
//  Copyright © 2018年 Whot inc. All rights reserved.
//

import Moya

enum ApiManager {
    case login
}

extension ApiManager : TargetType{
    var baseURL: URL {
        return URL(string: "https://script.google.com/")!
    }
    
    var path: String {
        switch self {
        case .login:
            return "macros/s/AKfycbxxgTSWXbEiX8EHBSWrt6PVDnMAfmM3FLYDAhy-cqgDTRVY6hA/exec"
        }
    }
    
    var method: Method {
        switch self {
        case .login:
            return .get
        }
    }
    
    var sampleData: Data {
        switch self {
        case .login:
            return "Create post successfully".data(using: String.Encoding.utf8)!
        }
    }
    
    var task: Task {
        return .requestPlain
    }
    
    var headers: [String : String]? {
        return nil
    }
}
