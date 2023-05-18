//
//  PXXSUtils.swift
//  PXXOCLib
//
//  Created by wz on 2023/3/29.
//

import Foundation
import PXXFoundation

public class PXXOSUitls: NSObject
{
    // 为了上OC代码能够调到，必须有： @objc public 缺一不可
    @objc public class func showTime() {
        print("swift showTime: \(NSDate().description)")
    }
    
    @objc public class func appInfo() -> [String: String] {
        var dict = PXXOSObject.othersInfos()
        dict["appVersion"] = PXXFoundation.appVersion()
        return dict
    }
}
