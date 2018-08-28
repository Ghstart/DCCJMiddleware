//
//  DCCJCycleLoanAuthResultInfo.swift
//  DCCJConfig
//
//  Created by 刘汤圆 on 2018/8/23.
//

import UIKit
import Foundation

public struct DCCJCycleLoanAuthResultInfo: Codable {
    let result: DCCJCycleLoanIdentifyStatusResponse?
    let success: Bool
    let message: String?
}

public struct DCCJCycleLoanAuthResultInfoResponse: Codable {
    let cardPhotoFront: String
    let cardPhotoReverse: String
    let idCard: String
    let name: String
    let orderNo: String
    let status: Int
}
