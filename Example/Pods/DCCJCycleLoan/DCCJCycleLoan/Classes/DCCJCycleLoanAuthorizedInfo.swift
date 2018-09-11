//
//  DCCJCycleLoanAuthorizedInfo.swift
//  DCCJConfig
//
//  Created by 刘汤圆 on 2018/9/5.
//

import UIKit
import Foundation

public struct DCCJCycleLoanAuthorizedInfo: Codable {
    public let result: DCCJCycleLoanAuthorizedResponse?
    public let success: Bool
    public let message: String?
}

public struct DCCJCycleLoanAuthorizedResponse: Codable {
    public let authentication: Int?
    public let idCard: String?
    public let userName: String?
    public let phoneNo: String?
}
