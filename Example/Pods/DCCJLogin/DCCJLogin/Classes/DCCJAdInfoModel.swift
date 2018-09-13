//
//  DCCJAdInfoModel.swift
//  TestSwift
//
//  Created by 刘汤圆 on 2018/7/23.
//  Copyright © 2018年 刘汤圆. All rights reserved.
//

import Foundation
public struct DCCJAdInfoModel: Codable {
    public let data: DCCJGetAdInfoResponse?
    public let success: Bool
    public let message: String?
}

public struct DCCJGetAdInfoResponse: Codable {
    public let imageUrl: String
    public let linkUrl: String
}
