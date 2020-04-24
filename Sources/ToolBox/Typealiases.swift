//
//  Typealiases.swift
//  ToolBox
//
//  Created by Vitalis on 07/02/2020.
//  Copyright © 2019 Neiron Digital. All rights reserved.
//

import UIKit

// ...........
public extension ToolBox {
    
    //                                      MARK: - TYPES
    //..............................................................................................
    
    struct Alias {
        public typealias LaunchOptions = [UIApplication.LaunchOptionsKey: Any]
    }
    
    //                                      MARK: - CLOSURES
    //..............................................................................................
    
    struct Closure {
        
        public typealias Void           = () -> ()
        public typealias AlertAction    = (UIAlertAction) -> ()
        public typealias Controller     = (UIViewController) -> ()
    }
}
