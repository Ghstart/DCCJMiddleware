//
//  DCCJLogin.swift
//  TestSwift
//
//  Created by 刘汤圆 on 2018/7/23.
//  Copyright © 2018年 刘汤圆. All rights reserved.
//

import Foundation
import DCCJNetwork
import DCCJConfig

public final class DCCJLogin {
    
    private let network: DCCJNetwork
    
    public init(net: DCCJNetwork) {
        self.network = net
    }
    
    public func request(with r: LoginRequests) -> (data: Future<Data>, task: URLSessionDataTask?) {
        return self.network.request(with: r)
    }
    
    public func request<Value: Codable>(with r: LoginRequests) -> (data: Future<Value>, task: URLSessionDataTask?) {
        let (d, t) = self.network.request(with: r)
        
        let unboxdata: Future<Value> = d.unboxed()
        
        return (data: unboxdata, task: t)
    }
    
//    public func request<D: Codable>(_ r: LoginRequests, handler: @escaping (Result<D, NSError>) -> Void) -> URLSessionDataTask? {
//        return self.network.requestBy(r, completion: { (result: Result<D, DataManagerError>) in
//            switch result {
//            case .success(let v):
//                handler(.success(v))
//            case .failure(let e as NSError):
//                handler(.failure(e))
//            }
//        })
//    }
    
//    public func request<Value>(with r: LoginRequests) -> (data: Future<Value>, task: URLSessionDataTask?) {
    
//        let (data: d, task: t) = self.network.request(with: r)
//        if Value.self == Data.Type.self {
//
//            return (data: d, task: t) as (data: Future<Data>, task: URLSessionDataTask?) as! (data: Future<Value>, task: URLSessionDataTask?)
//        } else {
//
//            return (data: self.network.request(with: r).data.unboxed(), task: t) as! (data: Future<DCCJAdInfoModel>, task: URLSessionDataTask?)
        
//        let (d, t) = self.network.request(with: r)
//        if (returnTypeIsData) {
//            return (data: d, task: t)
//        } else {
//            let unboxData: Future<Value> = d.unboxed()
//            return (data: unboxData, task: t)
//        }
        
//    }

//    private func _request(q: LoginRequests, callBack: @escaping (Codable?, NSError?) -> Void) {
//        switch q {
//        case .send(let type, _):
//            switch type {
//            case .getAdInfo:
//                self.network.requestBy(q) { (result: Result<DCCJAdInfoModel, DataManagerError>) in
//                    switch result {
//                    case .success(let response) :
//                        callBack(response, nil)
//                    case .failure(let e) :
//                        callBack(nil, e as NSError)
//                    }
//                }
//
//
//
//            case .userLogin:
//                self.network.requestDataBy(q) { (result: Result<Data, DataManagerError>) in
//                    switch result {
//                    case .success(let response) :
//                        callBack(response, nil)
//                    case .failure(let e) :
//                        callBack(nil, e as NSError)
//                    }
//                }
//
//            case .userRegist:
//                self.network.requestDataBy(q) { (result: Result<Data, DataManagerError>) in
//                    switch result {
//                    case .success(let response) :
//                        callBack(response, nil)
//                    case .failure(let e) :
//                        callBack(nil, e as NSError)
//                    }
//                }
//            case .setLoginPWD:
//                self.network.requestBy(q) { (result: Result<DCCJBasicResponseModel, DataManagerError>) in
//                    switch result {
//                    case .success(let response) :
//                        callBack(response, nil)
//                    case .failure(let e) :
//                        callBack(nil, e as NSError)
//                    }
//                }
//            case .checkLoginPWD:
//                self.network.requestBy(q) { (result: Result<DCCJBasicResponseModel, DataManagerError>) in
//                    switch result {
//                    case .success(let response) :
//                        callBack(response, nil)
//                    case .failure(let e) :
//                        callBack(nil, e as NSError)
//                    }
//                }
//            case .setPayPWD:
//                self.network.requestBy(q) { (result: Result<DCCJBasicResponseModel, DataManagerError>) in
//                    switch result {
//                    case .success(let response) :
//                        callBack(response, nil)
//                    case .failure(let e) :
//                        callBack(nil, e as NSError)
//                    }
//                }
//            case .checkPayPWD:
//                self.network.requestBy(q) { (result: Result<DCCJBasicResponseModel, DataManagerError>) in
//                    switch result {
//                    case .success(let response) :
//                        callBack(response, nil)
//                    case .failure(let e) :
//                        callBack(nil, e as NSError)
//                    }
//                }
//            case .checkVersion:
//                self.network.requestBy(q) { (result: Result<DCCJCheckVersionModel, DataManagerError>) in
//                    switch result {
//                    case .success(let response) :
//                        callBack(response, nil)
//                    case .failure(let e) :
//                        callBack(nil, e as NSError)
//                    }
//                }
//            case .verifyUserIdentify:
//                self.network.requestBy(q) { (result: Result<DCCJBasicResponseModel, DataManagerError>) in
//                    switch result {
//                    case .success(let response) :
//                        callBack(response, nil)
//                    case .failure(let e) :
//                        callBack(nil, e as NSError)
//                    }
//                }
//            case .getUserAccount:
//                self.network.requestDataBy(q) { (result: Result<Data, DataManagerError>) in
//                    switch result {
//                    case .success(let response) :
//                        callBack(response, nil)
//                    case .failure(let e) :
//                        callBack(nil, e as NSError)
//                    }
//                }
//            }
//        }
//    }
}

public enum ObjcLoginRequests {
    case getAdInfo
    case userLogin
    case userRegist
    case setLoginPWD
    case checkLoginPWD
    case setPayPWD
    case checkPayPWD
    case verifyUserIdentify
    case getUserAccount
    case checkVersion
}

public enum LoginRequests {
    case send(type: ObjcLoginRequests, data: [String: Any])
}

extension LoginRequests: Request {
    var response: Codable {
        return DCCJUserInfoModel.Type.self as! Codable
    }
    
    public var host: NetworkEnvironment {
        return .staging
    }
    
    public var path: String {
        switch self {
        case .send(let type, _):
            switch type {
            case .getAdInfo:
                return "api/app/Base/getAdvertisement"
            case .userLogin:
                return "api/app/User/login"
            case .userRegist:
                return "api/app/User/register"
            case .setLoginPWD:
                return "api/app/User/setLoginPwd"
            case .checkLoginPWD:
                return "api/app/User/loginPwdCheck"
            case .setPayPWD:
                return "api/app/User/setPayPwd"
            case .checkPayPWD:
                return "api/app/User/payPwdCheck"
            case .verifyUserIdentify:
                return "api/app/User/checkIDInfo"
            case .getUserAccount:
                return "api/app/Cashier/getUserInfo"
            case .checkVersion:
                return "api/app/Base/getAppVersion"
            }
        }
    }
    
    public var method: HTTPMethod {
        switch self {
        case .send( _, _):
            return .POST
        }
    }
    
    public var paramters: [String : Any] {
        switch self {
        case .send(_, let data):
            return data
        }
    }
}


