//
//  TMMineModel.swift
//  ivygateSwift
//
//  Created by 纪志刚 on 2018/4/24.
//  Copyright © 2018年 纪志刚. All rights reserved.
//

import UIKit
import HandyJSON



class TMMineModel: HandyJSON {
    
    var code:String = ""
    var name:String = ""
    var domain:String = ""
    var captcha:Bool = false
    
    
    
    
    

    //HandyJSON要求必须实现这个方法
    required init() {
        
    }
    

    
    
    
    
    
    
    /// 获取个人信息
    ///
    /// - Parameters:
    ///   - succ: <#succ description#>
    ///   - fail: <#fail description#>
    static func requestFun(succ: @escaping(_ arr:Array<TMMineModel>) -> (), fail: @escaping (_ errStr: String) -> ()) {
        
        TMNetworkingTool.requestFun(url: "你自己的网络请求", method: kHTTPMethodGet, parameters: nil, showLoading: false, succ: { (responseData, response) in
            succ([TMMineModel].deserialize(from: responseData, designatedPath: "data") as? Array<TMMineModel> ?? Array.init())
        }) { (errStr, err) in
            fail(errStr)
        }
    }
    

}
