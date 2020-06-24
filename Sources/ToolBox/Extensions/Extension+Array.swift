//
//  Extension+Array.swift
//  ToolBox
//
//  Created by Vitalis on 01/05/2020.
//  Copyright © 2020 Neiron Digital. All rights reserved.
//

public extension Array {
    // Get item with index if exists
    func getItem(forIndex index: Int) -> Element? {
        // Index check
        guard (index < self.count) && (index >= 0) else {
            print("OUT OF INDEX")
            return nil
        }
        return self[index]
    }
}
