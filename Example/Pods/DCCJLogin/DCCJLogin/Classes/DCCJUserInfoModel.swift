//
//  DCCJUserInfoModel.swift
//  TestSwift
//
//  Created by 刘汤圆 on 2018/7/23.
//  Copyright © 2018年 刘汤圆. All rights reserved.
//

import Foundation
public struct DCCJUserInfoModel: Codable {
    public let result: DCCJUserInfoResponse?
    public let success: Bool
    public let message: String?
}

public struct DCCJUserInfoResponse:  Codable {
    public let phoneNumber: String
    public let nickName: String
    public let headPhotoUrl: String
    public let loginPswSetToken: String
    public let idCard: String
    public let realName: String
    public let balance: String
    public let hycBalance: String
    public let defaultBankCard: String
    public let memberId: String
    public let gender: Int
    public let isVerified: Bool
    public let isLoginPasswordSet: Bool
    public let isPayPasswordSet: Bool
    public let loginCount: Int
    public let cardCount: Int
}

