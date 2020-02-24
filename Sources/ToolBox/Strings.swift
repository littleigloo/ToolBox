//
//  Strings.swift
//  ToolBox
//
//  Created by Vitalis on 13/02/2020.
//  Copyright © 2020 Neiron Digital. All rights reserved.
//

import Foundation

// ...........

public extension ToolBox {
    
    //  MARK: - METHODS 🌐 PUBLIC
    // ///////////////////////////////////////////
    
    // Combines two strings and returns a string with specified key-value format
    static func getFormattedKeyValueString(forKey key: String, andValue value: String, withLeftPaggingSize leftPaggingSize: Int = 0) -> String {
        
        let paddingString = leftPaggingSize > 0 ? "".addSpaces(leftPaggingSize, position: .back) : ""
        return "\n\(paddingString)▪️ \(key) 🔸 \(value)"
    }

    // ...........

    // Combines key-value dictionary structure into single string
    static func getFormattedDictionaryString(dict: [AnyHashable: Any]?, withLeftPaggingSize leftPaggingSize: Int = 0) -> String {
        
        guard let dict = dict, !dict.isEmpty else {
            return ""
        }
        
        var resultString = "↴"
        
        for item in dict {
            resultString += getFormattedKeyValueString(forKey: "\(item.key)", andValue: "\(item.value)", withLeftPaggingSize: leftPaggingSize)
        }
        
        return resultString
    }

    // ...........

    // Adds additional number of spaces to the given string to match the given string length
    static func stringWithAddedSpacesToMatchLenghtOf(_ stringLength: Int, forString initialString: String) -> String {
        
        let initialStringLength = initialString.count
        if initialStringLength < stringLength {
            var stringWithAddedSpaces = initialString
            let lengthDifference = stringLength - initialStringLength
            for _ in 1...lengthDifference {
                stringWithAddedSpaces += " "
            }
            return stringWithAddedSpaces
        }
        return initialString
    }

    // ...........

    // Print a chosen string for a nil object or an empty string. [WARNING!]: Unknown behavior for complex class instances, use for simple types only.
    static func getString<T>(forOptionalValue value: T?, substitute: String? = nil) -> String {
        guard let value = value, "\(value)" != "" else {
            return substitute ?? "-"
        }
        return "\(value)"
    }
}
