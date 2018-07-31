//
//  DCCJUserInfoModel.swift
//  TestSwift
//
//  Created by 刘汤圆 on 2018/7/23.
//  Copyright © 2018年 刘汤圆. All rights reserved.
//

import Foundation
public struct DCCJUserInfoModel: Codable {
    let result: DCCJUserInfoResponse?
    let success: Bool
    let message: String?
}

public struct DCCJUserInfoResponse:  Codable {
    let phoneNumber: String
    let nickName: String
    let headPhotoUrl: String
    let loginPswSetToken: String
    let idCard: String
    let realName: String
    let balance: String
    let hycBalance: String
    let defaultBankCard: String
    let memberId: String
    let gender: Int
    let isVerified: Bool
    let isLoginPasswordSet: Bool
    let isPayPasswordSet: Bool
    let loginCount: Int
    let cardCount: Int
}

