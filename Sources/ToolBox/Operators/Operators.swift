//
//  Operators.swift
//  ToolBox
//
//  Created by Vitalis on 27/02/2020.
//  Copyright © 2020 Neiron Digital. All rights reserved.
//

import Foundation

// ...........

precedencegroup Assign {
  associativity: right
  higherThan: AssignmentPrecedence
  lowerThan: TernaryPrecedence
}

// ...........
// Assign right to left only if right is not nil
infix operator <<< : Assign
public func <<<<T>(left: inout T?, right: T?) {
    guard let right = right else {
        return
    }
    left = right
}

// ...........
// Assign right to left only if left is nil
infix operator <?? : Assign
public func <??<T>(left: inout T?, right: T) {
    if left == nil {
        left = right
    }
}

// ...........
// If left part is nil then execute the closure
infix operator ?-> : TernaryPrecedence
public func ?-><R>(left: R?, right: @autoclosure () -> ()) -> R? {
    guard let _ = left else {
        right()
        return left
    }
    return left
}
