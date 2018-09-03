//
//  DCCJLoginRegistModel.swift
//  TestSwift
//
//  Created by 刘汤圆 on 2018/7/23.
//  Copyright © 2018年 刘汤圆. All rights reserved.
//

//import UIKit
//
//class DCCJLoginRegistModel: NSObject {
//   
//}

import Foundation
public struct DCCJLoginRegistModel: Codable {
    public let result: DCCJLoginRegistResponse?
    public let success: Bool
    public let message: String?
}

public struct DCCJLoginRegistResponse: Codable {
    public let accessToken: String
    public let userInfo: DCCJUserInfoResponse
}


