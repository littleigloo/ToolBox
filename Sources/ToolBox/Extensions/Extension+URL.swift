//
//  Extension+URL.swift
//  ToolBox
//
//  Created by Vitalis on 13/02/2020.
//  Copyright © 2020 Neiron Digital. All rights reserved.
//

import Foundation

// ...........

public extension URL {
    
    // Encodes a string and returns URL
    init?(stringToEncode: String) {
        
        guard let urlwithPercentEscapes = stringToEncode.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed) else {
            print("COULD NOT ENCODE URL STRING")
            return nil
        }
        
        self.init(string: urlwithPercentEscapes)
    }
}
