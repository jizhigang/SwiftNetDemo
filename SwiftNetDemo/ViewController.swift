//
//  ViewController.swift
//  SwiftNetDemo
//
//  Created by 纪志刚 on 2020/7/23.
//  Copyright © 2020 纪志刚. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        TMMineModel.requestFun(succ: { (model) in
            print("网络请求成功了")
        }) { (errStr) in
            print("失败了")
        }
        
        
        // Do any additional setup after loading the view.
    }


}

