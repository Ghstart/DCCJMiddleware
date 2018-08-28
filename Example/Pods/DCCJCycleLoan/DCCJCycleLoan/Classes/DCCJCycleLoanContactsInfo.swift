//
//  DCCJCycleLoanContactsInfo.swift
//  DCCJConfig
//
//  Created by 刘汤圆 on 2018/8/23.
//

import UIKit
import Foundation

public struct DCCJCycleLoanContactsInfo: Codable {
    let result: DCCJCycleLoanContactsInfoResponse?
    let success: Bool
    let message: String?
}

public struct DCCJCycleLoanContactsInfoResponse: Codable {
    let memberId: String
    let linealKinPhone: String
    let linealKinName: String
    let firendName: Bool
    let firendPhone: Bool
}
