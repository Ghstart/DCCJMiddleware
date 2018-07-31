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
    let result: DCCJLoginRegistResponse?
    let success: Bool
    let message: String?
}

public struct DCCJLoginRegistResponse: Codable {
    let accessToken: String
    let userInfo: DCCJUserInfoResponse
}


