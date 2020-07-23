//
//  SwiftNetDemoPCH.swift
//  SwiftNetDemo
//
//  Created by 纪志刚 on 2020/7/23.
//  Copyright © 2020 纪志刚. All rights reserved.
//

import UIKit
import SnapKit
import Alamofire

let kHTTPMethodGet:HTTPMethod = HTTPMethod.get
let kHTTPMethodPost:HTTPMethod = HTTPMethod.post
let kNetFailMessage = "请检查网络"
let kScreenWidth = UIScreen.main.bounds.size.width
let kScreenHeight = UIScreen.main.bounds.size.height
var KNetReferenceCount:Int = 0
