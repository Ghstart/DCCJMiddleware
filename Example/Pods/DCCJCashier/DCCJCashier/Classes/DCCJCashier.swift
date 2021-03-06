//
//  DCCJCashier.swift
//  DCCJCashier
//
//  Created by 龚欢 on 2018/6/28.
//  Copyright © 2018年 龚欢. All rights reserved.
//

import Foundation
import DCCJNetwork
import DCCJConfig

public final class DCCJCashier: NSObject {
    
    private let network: DCCJNetwork
    public static let kSerial = Notification.Name("kSerial")
    
    public init(net: DCCJNetwork) {
        self.network = net
    }
    
    public func request<Value: Codable>(with r: CashierRequests) -> (data: Future<Value>, task: URLSessionDataTask?) {
        let (d, t) = self.network.request(with: r)
        
        let unboxData: Future<Value> = d.unboxed()
        unboxData.observe { (result: Result<Value>) in
            switch result {
            case .failure(let e):
                if let error = e as? DataManagerError {
                    switch error {
                    case .customError(let message) where message.code != nil:
                        if (message.code! == "ROUTE_0007") { self.recreateOrderNumber(baseon: r) }
                    default: break
                    }
                }
            case .success: break
            }
        }
        return (data: unboxData, task: t)
    }
    
    private func recreateOrderNumber(baseon request: CashierRequests) {
        NotificationCenter.default.post(name: DCCJCashier.kSerial, object: request)
    }
}


public enum CashierRequests {
    case send(type: CashierRequestTypes, data: [String: Any])
}

extension CashierRequests: Request {
    var response: Codable {
        return SupportBankCardResponse.Type.self as! Codable
    }

    public var host: NetworkEnvironment {
        switch self {
        case .send(let type, _):
            switch type {
            case .checkBankCardBin:
                return .staging
            default:
                return .cashier_staging
            }
        }
    }
    
    public var path: String {
        switch self {
        case .send(let type, _):
            switch type {
            case .requestInitCashier:
                return "order/bankList"
            case .requestBankCardsList:
                return "order/bankcard/list"
            case .supportBankCards:
                return "order/supportBanks"
            case .requestCheckPayPassword:
                return "order/payPwdCheck"
            case .requestToPay:
                return "order/payAction"
            case .requestToSurePay:
                return "order/payConfirm"
            case .requestBindCardAndCheckCard:
                return "order/checkCard"
            case .requestBindCardAndConfirm:
                return "order/bindingCardConfirm"
            case .requestBindCardAndSupportedBankCard:
                return "order/supportedBankCard"
            case .requestBindCardAndSendSms:
                return "order/sendSms"
            case .requestBindCardAndMyBandCardList:
                return "order/bankcard/list"
            case .requestBindCardAndBindingCard:
                return "order/bindingCard"
            case .closeCashier:
                return "order/closeCashierDesk"
            case .checkBankCardBin:
                return "api/app/Cashier/checkCardBin"
            }
        }
    }
    
    public var method: HTTPMethod {
        switch self {
        case .send(let type, _):
            switch type {
            case .requestBindCardAndSupportedBankCard:
                return .GET
            default:
                return .POST
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

