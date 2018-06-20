//
//  SecondViewController.swift
//  RetainCycleExample
//
//  Created by 吳登秝 on 2018/6/20.
//  Copyright © 2018年 DavidWu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, SmallVCDelegate {
    
    var containerController: SmallViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func sayHello() {
        print("Hello")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let controller = segue.destination as? SmallViewController else { return }
        controller.delegate = self
        containerController = controller
    }
    
    deinit {
        print("SecondViewController is deinited")
    }
}
