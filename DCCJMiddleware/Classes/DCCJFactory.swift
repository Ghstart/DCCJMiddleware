//
//  DCCJFactory.swift
//  DCCJMiddleware
//
//  Created by 龚欢 on 2018/7/10.
//

import Foundation
import DCCJCashier

public protocol CashierFactory {
    func makeCashier() -> DCCJCashier
}
