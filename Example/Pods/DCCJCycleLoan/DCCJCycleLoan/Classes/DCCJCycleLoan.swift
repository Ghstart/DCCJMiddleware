//
//  DCCJCycleLoan.swift
//  TestSwift
//
//  Created by 刘汤圆 on 2018/8/23.
//  Copyright © 2018年 刘汤圆. All rights reserved.
//

import UIKit

import DCCJNetwork
import DCCJConfig

public final class DCCJCycleLoan {
    
    private let network: DCCJNetwork
    
    public init(net: DCCJNetwork) {
        self.network = net
    }

    public func request<Value: Codable>(with r: CycleLoanRequests) -> (data: Future<Value>, task: URLSessionDataTask?) {
        let (d, t) = self.network.request(with: r)
        
        let unboxdata: Future<Value> = d.unboxed()
        
        return (data: unboxdata, task: t)
    }
}

public enum ObjcCycleLoanRequests {
    case userIdentifyStatus
    case searchContactInfo
    case submitContactInfo
    case insertRealNaimeInfo
    case searchAuthResult
    case applyCreditAmount
    case calculateErrorCount
    case checkHasIdentify
    case personalContacts
    case findUserContactInfo
    case insertOCRInfo
    case scanCode
    case checkIdCard
    case findIdentityInfo
}

public enum CycleLoanRequests {
    case send(type: ObjcCycleLoanRequests, data: [String: Any])
}

extension CycleLoanRequests: Request {
    var response: Codable {
        return DCCJCycleLoanIdentifyStatusInfo.Type.self as! Codable
    }
    
    public var host: NetworkEnvironment {
        
        return .production
    }
    
    public var path: String {
        switch self {
        case .send(let type, _):
            switch type {
            case .userIdentifyStatus:
                return "live/circleCredit/identifyStatus"
            case .searchContactInfo:
                return "live/circleCredit/searchContactsInfo"
            case .submitContactInfo:
                return "live/circleCredit/submitContactsInfo"
            case .insertRealNaimeInfo:
                return "live/circleCredit/insertRealNameInfo"
            case .searchAuthResult:
                return "live/circleCredit/searchAuthResult"
            case .applyCreditAmount:
                return "live/user/limit/obtain"
            case .calculateErrorCount:
                return "live/circleCredit/countErrorCode"
            case .checkHasIdentify:
                return "live/circleCredit/checkHasIdentify"
            case .personalContacts:
                return "live/circleCredit/personalContacts"
            case .findUserContactInfo:
                return "live/circleCredit/findUserContactsInfo"
            case .insertOCRInfo:
                return "live/circleCredit/insertBaseInfo"
            case .scanCode:
                return "live/financePlan/scanCode"
            case .checkIdCard:
                return "live/circleCredit/checkIdCard"
            case .findIdentityInfo:
                return "live/circleCredit/findIdentityInfo"
            }
        }
    }
    
    public var method: HTTPMethod {
        switch self {
        case .send(let type, _):
            switch type {
            case .userIdentifyStatus:
                return .GET
            case .searchContactInfo:
                return .GET
            case .submitContactInfo:
                return .POST
            case .insertRealNaimeInfo:
                return .POST
            case .searchAuthResult:
                return .GET
            case .applyCreditAmount:
                return .POST
            case .calculateErrorCount:
                return .GET
            case .checkHasIdentify:
                return .GET
            case .personalContacts:
                return .POST
            case .findUserContactInfo:
                return .GET
            case .insertOCRInfo:
                return .POST
            case .scanCode:
                return .GET
            case .checkIdCard:
                return .GET
            case .findIdentityInfo:
                return .GET
            }
        }
    }
    
    public var paramters: [String : Any] {
        switch self {
        case .send(_, let data):
            return data
        }
    }
}
