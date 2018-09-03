//
//  DCCJCycleLoanAuthResultInfo.swift
//  DCCJConfig
//
//  Created by 刘汤圆 on 2018/8/23.
//

import UIKit
import Foundation

public struct DCCJCycleLoanAuthResultInfo: Codable {
    public let result: DCCJCycleLoanIdentifyStatusResponse?
    public let success: Bool
    public let message: String?
}

public struct DCCJCycleLoanAuthResultInfoResponse: Codable {
    public let cardPhotoFront: String
    public let cardPhotoReverse: String
    public let idCard: String
    public let name: String
    public let orderNo: String
    public let status: Int
}
