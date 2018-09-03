//
//  DCCJCycleLoanPersonInfo.swift
//  DCCJConfig
//
//  Created by 刘汤圆 on 2018/8/23.
//

import UIKit
import Foundation

public struct DCCJCycleLoanPersonInfo: Codable {
    public let result: DCCJCycleLoanPersonInfoResponse?
    public let success: Bool
    public let message: String?
}

public struct DCCJCycleLoanPersonInfoResponse: Codable {
    public let provinceCode: String
    public let provinceName: String
    public let cityCode: String
    public let cityName: String
    public let rangeCode: String
    public let rangeName: String
    public let district: String
    public let mail: String
}
