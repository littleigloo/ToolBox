//
//  StringValidations.swift
//  ToolBox
//
//  Created by Vitalis on 05/05/2020.
//  Copyright © 2020 Neiron Digital. All rights reserved.
//

import Foundation
// ...........

// Check if mail is valid. Uses REGEX
public func isValidEmail(_ email: String) -> Bool {
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
    let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailTest.evaluate(with: email)
}

// Check if password is valid. Uses REGEX
public func isValidPassword(_ email: String) -> Bool {
    let passwordRegEx = "(?!.*[\\s]+)(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[\\W\\_])[A-Za-z\\d\\W\\_]{8,}$"
    let passwordTest = NSPredicate(format:"SELF MATCHES %@", passwordRegEx)
    return passwordTest.evaluate(with: email)
}
 
// Check if number is valid. Uses REGEX
public func isValidNumber(_ number: String) -> Bool {
    let numberRegEx = "[0-9]+"
    let numberTest = NSPredicate(format:"SELF MATCHES %@", numberRegEx)
    return numberTest.evaluate(with: number)
}
