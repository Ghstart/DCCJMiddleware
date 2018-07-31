//
//  DCCJMiddleware.swift
//  DCCJMiddleware
//
//  Created by 龚欢 on 2018/7/10.
//

import Foundation
import DCCJUser
import DCCJCashier
import DCCJMessageCenter
import DCCJNetwork
import DCCJLogin

public class DCCJMiddleware {
   
    public lazy var userManager    = DCCJUser()
    public lazy var cashier        = DCCJCashier()
    private lazy var network       = DCCJNetwork.shared
    
    public init() {
        self.network.delegate = self
        self.network.dataSource = self
    }
}

extension DCCJMiddleware: CashierFactory {
    public func makeCashier() -> DCCJCashier {
        return self.cashier
    }
}

extension DCCJMiddleware: MessageCenterFactory {
    public func makeMessageCenter() -> DCCJMessageCenter {
        return DCCJMessageCenter()
    }
}

extension DCCJMiddleware: LoginFactory {
    public func makeLogin() -> DCCJLogin {
        return DCCJLogin()
    }
}

extension DCCJMiddleware: DCCJNetworkDelegate, DCCJNetworkDataSource {
    /*Error Code = 201*/
    public func errorCodeEqualTo201() {
        self.userManager.token = ""
    }
    
    /*Return Header Fields*/
    public func customHttpHeaders() -> Dictionary<String, String> {
        return ["accessToken": self.userManager.token]
    }
}
