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
        middle.makeMessageCenter().send(with: MessageCenterRequest.sendMessage(type: .login, phone: "120")).data.observe { (result: Result<MessageCenterResponse>) in
            
        }
        
        // 2.
        middle.makeMessageCenter().send(with: MessageCenterRequest.verifyMessage(type: .thirdBind, phone: "110", code: "8899")).data.observe { (result: Result<MessageCenterResponse>) in
            
        }
   
        // Login request
        middle.makeLogin().request(with: LoginRequests.send(type: .checkPayPWD, data: [String: Any]())).data.observe { (result: Result<DCCJCheckVersionModel>) in
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

