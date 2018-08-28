//
//  DCCJCycleLoanPersonInfo.swift
//  DCCJConfig
//
//  Created by 刘汤圆 on 2018/8/23.
//

import UIKit
import Foundation

public struct DCCJCycleLoanPersonInfo: Codable {
    let result: DCCJCycleLoanPersonInfoResponse?
    let success: Bool
    let message: String?
}

public struct DCCJCycleLoanPersonInfoResponse: Codable {
    let provinceCode: String
    let provinceName: String
    let cityCode: String
    let cityName: String
    let rangeCode: String
    let rangeName: String
    let district: String
    let mail: String
}
