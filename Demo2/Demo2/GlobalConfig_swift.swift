//
//  GlobalConfig_swift.swift
//  Demo2
//
//  Created by ze hua chen on 2021/11/17.
//

import Foundation
var host = ""
@objc class GlobalConfig_swift: NSObject {
    
    @objc static func getHost() -> String {
        if env_type == 1{
            host = "HOST1"
        }else if env_type == 2 {
            host = "HOST2"
        }else{
            host = "HOST3"
        }
        return host
    }
}


