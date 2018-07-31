//
//  DCCJCheckVersionModel.swift
//  TestSwift
//
//  Created by 刘汤圆 on 2018/7/23.
//  Copyright © 2018年 刘汤圆. All rights reserved.
//

import Foundation
public struct DCCJCheckVersionModel: Codable {
    let result: DCCJGetAdInfoResponse?
    let success: Bool
    let message: String?
}

public struct DCCJCheckVersionResponse: Codable {
    let downloadUrl: String
    let iosVersion: String
    let updateDescription: String
    let updateName: String
    let forceUpdate: Bool
    let needUpdate: Bool
}
