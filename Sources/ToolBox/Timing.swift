//
//  File.swift
//  
//
//  Created by Vitalis on 17/1/20.
//

import Foundation

// ...........

func delay(for timeInterval: TimeInterval, closureToExecute: @escaping () -> ()) {
    
    let when = DispatchTime.now() + timeInterval
    DispatchQueue.main.asyncAfter(deadline: when) {
        closureToExecute()
    }
}
