//
//  DCCJAdInfoModel.swift
//  TestSwift
//
//  Created by 刘汤圆 on 2018/7/23.
//  Copyright © 2018年 刘汤圆. All rights reserved.
//

import Foundation
public struct DCCJAdInfoModel: Codable {
    let result: DCCJGetAdInfoResponse?
    let success: Bool
    let message: String?
}

public struct DCCJGetAdInfoResponse: Codable {
    let AdImageURL: String
    let AppLinkURL: String
}
