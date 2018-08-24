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
import DCCJCycleLoan

public class DCCJMiddleware {
   
    public static let shared        = DCCJMiddleware()
    public lazy var network         = DCCJNetwork()
    public lazy var userManager     = DCCJUser()
    public lazy var cashier         = DCCJCashier(net: network)
    public lazy var messageCenter   = DCCJMessageCenter(net: network)
    public lazy var login           = DCCJLogin(net: network)
    public lazy var cycleLoan       = DCCJCycleLoan(net: network)

    private init() {
        self.network.delegate = self
        self.network.dataSource = self
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
