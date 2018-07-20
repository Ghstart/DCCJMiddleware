//
//  DCCJMiddleware.swift
//  DCCJMiddleware
//
//  Created by 龚欢 on 2018/7/10.
//

import Foundation
import DCCJUser
import DCCJCashier

public class DCCJMiddleware: NSObject, CashierFactory {
    public lazy var userManager    = DCCJUser()
    public lazy var cashier        = DCCJCashier()
    
    public override init() {
        super.init()
        /*Error Code = 201*/
        self.cashier.errorCodeEqualTo201CallBack = { [weak self] in
            self?.userManager.token = ""
        }
        /*Return Header Fields*/
        self.cashier.customHttpHeadersCallBack = { [weak self] in
            if let t = self?.userManager.token { return ["accessToken": t] }
            return ["accessToken": ""]
        }
    }
    
    public func makeCashier() -> DCCJCashier {
        return self.cashier
    }
}
