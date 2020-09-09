//
//  Extension+Array.swift
//  ToolBox
//
//  Created by Vitalis on 01/05/2020.
//  Copyright © 2020 Neiron Digital. All rights reserved.
//

import Foundation

public extension Array {
    // Get item with index if exists
    func getItem(forIndex index: Int, isLoggingErrors: Bool = false) -> Element? {
        // Index check
        guard (index < self.count) && (index >= 0) else {
            if isLoggingErrors {
                print("OUT OF INDEX")
            }
            return nil
        }
        return self[index]
    }
    // ...........
    func isItemExists(forIndex index: Int, isLoggingErrors: Bool = false) -> Bool {
        // Out of index check
        guard (index < self.count) && (index >= 0) else {
            if isLoggingErrors {
                print("OUT OF INDEX")
            }
            return false
        }
        return true
    }
}
// ...........
public extension Array where Element == String {
    // Returns URL array from String array
    var asURLs: [URL]? {
        // Create the list
        var urlList = [URL]()
        // Add image urls from the parts
        urlList += self.compactMap { item in
            return item.asURL
        }
        // Check & return
        guard urlList.count > 0 else {
            print("urlList IS EMPTY")
            return nil
        }
        return urlList
    }
}
// ...........
private extension String {
    // Returns a URL from string if conversion is possible or nil
    var asURL: URL? {
        guard !self.isEmpty else {
            return nil
        }
        guard let url = URL(stringToEncode: self) else {
            print("COULD NOT CREATE URL")
            return nil
        }
        return url
    }
}

