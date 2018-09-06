//
//  DCCJCycleLoanContactsInfo.swift
//  DCCJConfig
//
//  Created by 刘汤圆 on 2018/8/23.
//

import UIKit
import Foundation

public struct DCCJCycleLoanContactsInfo: Codable {
    public let result: DCCJCycleLoanContactsInfoResponse?
    public let success: Bool
    public let message: String?
}

public struct DCCJCycleLoanContactsInfoResponse: Codable {
    public let memberId: String?
    public let linealKinPhone: String?
    public let linealKinName: String?
    public let spouseName: String?
    public let spousePhone: String?
}
