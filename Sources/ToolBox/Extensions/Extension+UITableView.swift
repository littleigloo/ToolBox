//
//  Extension+UITableView.swift
//  ToolBox
//
//  Created by Vitalis on 21/05/2020.
//  Copyright © 2020 Neiron Digital. All rights reserved.
//

import UIKit
// ...........

public extension UITableView {
    // Reload tableView with visible cells animation
    func reloadWithAnimation() {
        self.reloadData()
        self.layoutIfNeeded()
        let cells = self.visibleCells
        let tableHeight = self.bounds.size.height
        for cell in cells {
            cell.transform = CGAffineTransform(translationX: 0, y: tableHeight)
            cell.alpha = 0
        }
        for (index, cell) in cells.enumerated() {
            UIView.animate(withDuration: 0.2, delay: 0.05 * Double(index), usingSpringWithDamping: 0.9, initialSpringVelocity: 5, options: [.curveEaseOut], animations: {
                cell.transform  = CGAffineTransform.identity
            }, completion: nil)
            UIView.animate(withDuration: 0.3, delay: 0.05 * Double(index), animations: {
                cell.alpha = 1
            }, completion: nil)
        }
    }
}
