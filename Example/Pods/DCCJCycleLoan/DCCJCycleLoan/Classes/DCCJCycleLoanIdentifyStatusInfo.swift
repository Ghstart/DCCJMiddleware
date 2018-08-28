//
//  DCCJCycleLoanIdentifyStatusInfo.swift
//  DCCJConfig
//
//  Created by 刘汤圆 on 2018/8/23.
//

import UIKit
import Foundation

public struct DCCJCycleLoanIdentifyStatusInfo: Codable {
    let result: DCCJCycleLoanIdentifyStatusResponse?
    let success: Bool
    let message: String?
}

public struct DCCJCycleLoanIdentifyStatusResponse: Codable {
    let baseStatus: Int
    let contactStatus: Int

}
