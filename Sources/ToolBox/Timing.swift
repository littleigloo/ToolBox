//
//  Timing.swift
//  ToolBox
//
//  Created by Vitalis on 17/01/2020.
//  Copyright © 2019 Neiron Digital. All rights reserved.
//

import Foundation

// ...........

public extension ToolBox {
    
    //  MARK: - METHODS 🌐 PUBLIC
    // ///////////////////////////////////////////
    
    static func delay(for timeInterval: TimeInterval, closureToExecute: @escaping () -> ()) {
        
        let when = DispatchTime.now() + timeInterval
        DispatchQueue.main.asyncAfter(deadline: when) {
            closureToExecute()
        }
    }
}
