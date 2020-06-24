//
//  Extension+String.swift
//  ToolBox
//
//  Created by Vitalis on 17/01/2020.
//  Copyright © 2019 Neiron Digital. All rights reserved.
//

import Foundation
// ...........

public extension String {
    // ...........
    
    enum AdditionalSpacesPosition {
        case front
        case back
    }
    
    // ...........

    /// Assuming the current string is base64 encoded, this method returns a String
    /// initialized by converting the current string into Unicode characters, encoded to
    /// utf8. If the current string is not base64 encoded, nil is returned instead.
    func decodeFromBase64() -> String? {
        return base64StringToData()?.string
    }
    
    // ...........

    /// Returns a base64 representation of the current string, or nil if the
    /// operation fails.
    func encodeToBase64String() -> String? {
        return toData()?.base64String
    }
    
    // ...........
    
    // Return data from current string.
    func toData() -> Data? {
        
        guard let data = data(using: .utf8) else {
            print("COULD NOT ENCODE TO DATA")
            return nil
        }
        
        return data
    }
    
    // ...........
    
    /// Returns data assuming the current string is base64 encoded.
    func base64StringToData() -> Data? {
        
        guard let sourceData = Data(base64Encoded: self, options: .ignoreUnknownCharacters) else {
            print("COULD NOT CREATE DATA FROM STRING. POSSIBLY NOT BASE 64 STRING.")
            return nil
        }
        
        return sourceData
    }
    
    // ...........
    
    // Remove delimiters from the string.
    var removedDelimeters: String {
        String(filter { !" \n\t\r".contains($0) })
    }
    
    // ...........
    
    // Remove slashes from the string.
    var removedSlashes: String {
        String(filter { !" \\".contains($0) })
    }
    
    // ...........
    
    // Adds additional number of spaces to the specified position
    func addSpaces(_ numberOfSpaces: Int, position: AdditionalSpacesPosition) -> String {
        
        guard numberOfSpaces > 0 else {
            print("numberOfSpaces <= 0")
            return self
        }
        
        var result = self
        
        switch position {
        case .front:
            var additionalSpaces = ""
            for _ in 1...numberOfSpaces {
                additionalSpaces += " "
            }
            result = additionalSpaces + result
        case .back:
            for _ in 1...numberOfSpaces {
                result += " "
            }
        }
        return result
    }
    // ...........
    
    // Check substring existance
    func isContaining(substring: String) -> Bool {
        guard let _ = self.lowercased().range(of: substring) else {
            return false
        }
        return true
    }
}
