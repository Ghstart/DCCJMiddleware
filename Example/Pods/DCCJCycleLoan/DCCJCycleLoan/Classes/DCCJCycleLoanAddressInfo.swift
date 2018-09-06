//
//  DCCJCycleLoanAddressInfo.swift
//  TestSwift
//
//  Created by 刘汤圆 on 2018/9/5.
//  Copyright © 2018年 刘汤圆. All rights reserved.
//

import UIKit
import Foundation

public struct DCCJCycleLoanAddressInfo: Codable {
    public let result: DCCJCycleLoanAddressResponse?
    public let success: Bool
    public let message: String?
}

public struct DCCJCycleLoanAddressResponse: Codable {
    public let provinceCode: String
    public let provinceName: String
    public let cityCode: String
    public let cityName: String
    public let rangeCode: String
    public let rangeName: String
    public let district: String
    public let mail: String
}
