//
//  ViewController.swift
//  DCCJMiddleware
//
//  Created by Ghstart on 07/09/2018.
//  Copyright (c) 2018 Ghstart. All rights reserved.
//

import UIKit
import DCCJMiddleware

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let middle = DCCJMiddleware()
        print(middle.cashier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

