//
//  TMLoading.swift
//  ivygateSwift
//
//  Created by 纪志刚 on 2018/4/25.
//  Copyright © 2018年 纪志刚. All rights reserved.
//

import UIKit
import SnapKit

class TMLoading: UIView {

   private var theLoadingView:UIView?
    
    
    static let shareInstance = TMLoading.init(frame: CGRect.zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //显示loading
    func show(title:String) {
        if self.superview != nil {
            self.removeFromSuperview()
        }
        
        self.backgroundColor = UIColor.clear
        UIApplication.shared.keyWindow?.addSubview(self)
        self.snp.makeConstraints { (make) in
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.top.equalTo(0)
            make.bottom.equalTo(0)
        }
        
        
        if self.theLoadingView != nil && self.theLoadingView?.superview != nil {
            self.theLoadingView?.removeFromSuperview()
        }
        
        self.theLoadingView = UIView.init()
        self.theLoadingView?.backgroundColor = UIColor.gray
        self.theLoadingView?.alpha = 0.65
        self.theLoadingView?.layer.masksToBounds = true
        self.theLoadingView?.layer.cornerRadius = 5
        self.addSubview(self.theLoadingView!)
        self.theLoadingView?.snp.makeConstraints({ (make) in
            make.centerX.equalTo(self.snp.centerX)
            make.centerY.equalTo(self.snp.centerY).offset(-20)
            make.size.equalTo(CGSize.init(width: 150, height: 120))
        })
        
        
        let imgView = UIImageView.init(image: UIImage.init(named: "loadingImage"))
        self.theLoadingView?.addSubview(imgView)
        imgView.snp.makeConstraints { (make) in
            make.centerX.equalTo((self.theLoadingView?.snp.centerX)!)
            make.centerY.equalTo((self.theLoadingView?.snp.centerY)!).offset(-10)
            make.size.equalTo(CGSize.init(width: 40, height: 40))
        }
        
        let animation:CABasicAnimation = CABasicAnimation.init(keyPath: "transform.rotation.z")
        animation.fromValue = NSNumber.init(value: 0.0)
        animation.toValue = NSNumber.init(value: Double.pi*2)
        animation.duration = 1
        animation.autoreverses = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        animation.repeatCount = MAXFLOAT
        imgView.layer.add(animation, forKey: nil)
        
        
        let titleLab = UILabel.init()
        titleLab.text = title
        titleLab.textColor = UIColor.white
        titleLab.textAlignment = .center
        self.theLoadingView?.addSubview(titleLab)
        titleLab.snp.makeConstraints { (make) in
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.top.equalTo(imgView.snp.bottom).offset(10)
        }
        
    }
    
    //loading 消失
    func dismissLoading() {
        self.theLoadingView?.removeFromSuperview()
        self.removeFromSuperview()
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}


extension TMLoading {
    
}
