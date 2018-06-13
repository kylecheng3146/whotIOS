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
        return URL(string: "https://api.instagram.com/")!
    }
    
    var path: String {
        switch self {
        case .login:
            return "v1/users/self/?access_token=315272341.7fb3c50.8d63aaf6d07943238abac3a1b0866c16"
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
