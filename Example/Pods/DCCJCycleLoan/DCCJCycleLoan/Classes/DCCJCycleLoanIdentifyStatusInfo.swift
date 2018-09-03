//
//  DCCJCycleLoanIdentifyStatusInfo.swift
//  DCCJConfig
//
//  Created by 刘汤圆 on 2018/8/23.
//

import UIKit
import Foundation

public struct DCCJCycleLoanIdentifyStatusInfo: Codable {
    public let result: DCCJCycleLoanIdentifyStatusResponse?
    public let success: Bool
    public let message: String?
}

public struct DCCJCycleLoanIdentifyStatusResponse: Codable {
    public let baseStatus: Int
    public let contactStatus: Int

}
