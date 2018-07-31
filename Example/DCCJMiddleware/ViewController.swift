//
//  ViewController.swift
//  DCCJMiddleware
//
//  Created by Ghstart on 07/09/2018.
//  Copyright (c) 2018 Ghstart. All rights reserved.
//

import UIKit
import DCCJMiddleware
import DCCJMessageCenter
import DCCJConfig
import DCCJLogin

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let middle = DCCJMiddleware()
        // 1.
        _  = middle.makeMessageCenter().send(.sendMessage(type: .login, phone: "120")) { (result: Result<MessageCenterResponse, NSError>) in
            
        }
        
        // 2.
        _ = middle.makeMessageCenter().send(.verifyMessage(type: .thirdBind, phone: "110", code: "8899")) { (result: Result<MessageCenterResponse, NSError>) in
            
        }
        
        // Login request
        _ = middle.makeLogin().request(LoginRequests.send(type: ObjcLoginRequests.checkLoginPWD, data: [String: Any]())) { (result: Result<DCCJCheckVersionModel, NSError>) in
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

