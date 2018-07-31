//
//  DCCJFactory.swift
//  DCCJMiddleware
//
//  Created by 龚欢 on 2018/7/10.
//

import Foundation
import DCCJCashier
import DCCJMessageCenter
import DCCJLogin

public protocol CashierFactory {
    func makeCashier() -> DCCJCashier
}

public protocol MessageCenterFactory {
    func makeMessageCenter() -> DCCJMessageCenter
}

public protocol LoginFactory {
    func makeLogin() -> DCCJLogin
}
