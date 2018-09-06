//
//  DCCJCycleLoanCheckHasIdentifyInfo.swift
//  TestSwift
//
//  Created by 刘汤圆 on 2018/9/5.
//  Copyright © 2018年 刘汤圆. All rights reserved.
//

import UIKit
import Foundation

public struct DCCJCycleLoanCheckHasIdentifyInfo: Codable {
    public let result: DCCJCycleLoanCheckHasIdentifyResponse?
    public let success: Bool
    public let message: String?
}

public struct DCCJCycleLoanCheckHasIdentifyResponse: Codable {
    public let hasIdentify: Bool?

}
