//
//  Extension+Data.swift
//  ToolBox
//
//  Created by Vitalis on 17/01/2020.
//  Copyright © 2019 Neiron Digital. All rights reserved.
//

import Foundation

// ...........

public extension Data {
    
    /// Converts current Data to Base64 Data.
    var base64: Data {
        return base64EncodedData()
    }
    
    /// Returns Base64 string from current Data.
    var base64String: String {
        base64EncodedString()
    }
    
    /// Returns string from current Data.
    var string: String? {
        
        guard let string = String(data: self, encoding: .utf8) else {
            print("COULD NOT GET UTF8 STRING FROM DATA")
            return nil
        }
        
        return string
    }
    
    /// Returns string from current Data assuming it is base64 encoded.
    var stringFromBase64Data: String {
        String(decoding: self, as: UTF8.self)
    }
}
