//
//  TMNetManager.swift
//  ivygateCRM
//
//  Created by 纪志刚 on 2018/7/27.
//  Copyright © 2018年 纪志刚. All rights reserved.
//

import UIKit
import Alamofire


/// 网络配置单例类
class TMNetManager: SessionManager {
    
    static var theManager:TMNetManager?
    
    class func shareManager(timeOutFlo:TimeInterval = 60) -> TMNetManager {
        
        let config = Config.shareConfig()
        config.timeoutIntervalForRequest = timeOutFlo
        
        if theManager == nil{
            theManager = TMNetManager.init(configuration: config)
        }

        return theManager!
    }
    
}





/// 网络配置单例类
class Config: URLSessionConfiguration {
    static var theConfig:URLSessionConfiguration?
    class func shareConfig() -> URLSessionConfiguration {
        if theConfig == nil {
            theConfig = URLSessionConfiguration.default
        }
        return theConfig!
    }
}
