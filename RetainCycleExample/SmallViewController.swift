//
//  SmallViewController.swift
//  RetainCycleExample
//
//  Created by 吳登秝 on 2018/6/20.
//  Copyright © 2018年 DavidWu. All rights reserved.
//

import UIKit

protocol SmallVCDelegate: class {
    func sayHello()
}

class SmallViewController: UIViewController {

    weak var delegate: SmallVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func helloPressed(_ sender: Any) {
        delegate?.sayHello()
    }
    deinit {
        print("SmallViewController is deinited")
    }
}
