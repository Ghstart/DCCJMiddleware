//
//  DCCJMiddleware.swift
//  DCCJMiddleware
//
//  Created by 龚欢 on 2018/7/10.
//

import Foundation
import DCCJNetwork
import DCCJUser
import DCCJCashier

public class DCCJMiddleware: NSObject, DCCJNetworkDelegate, DCCJNetworkDataSource, CashierFactory {
    public lazy var networkManager = DCCJNetwork.shared
    public lazy var userManager    = DCCJUser()
    
    public override init() {
        super.init()
        self.networkManager.delegate = self
        self.networkManager.dataSource = self
    }
    
    public func testObj() -> String {
        return ""
    }
    
    /*Error Code = 201*/
    public func errorCodeEqualTo201() {
        self.userManager.setToken("", callback: nil)
    }
    
    /*Return Header Fields*/
    public func customHttpHeaders() -> Dictionary<String, String> {
        return ["accessToken": self.userManager.getToken()]
    }
    
    public func makeCashier() -> DCCJCashier {
        return DCCJCashier(network: self.networkManager)
    }
}

