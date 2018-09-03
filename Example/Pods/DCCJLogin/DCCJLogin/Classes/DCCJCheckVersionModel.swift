//
//  DCCJCheckVersionModel.swift
//  TestSwift
//
//  Created by 刘汤圆 on 2018/7/23.
//  Copyright © 2018年 刘汤圆. All rights reserved.
//

import Foundation
public struct DCCJCheckVersionModel: Codable {
    public let result: DCCJGetAdInfoResponse?
    public let success: Bool
    public let message: String?
}

public struct DCCJCheckVersionResponse: Codable {
    public let downloadUrl: String
    public let iosVersion: String
    public let updateDescription: String
    public let updateName: String
    public let forceUpdate: Bool
    public let needUpdate: Bool
}
