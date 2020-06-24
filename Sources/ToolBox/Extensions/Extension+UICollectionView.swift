//
//  Extension+UICollectionView.swift
//  ToolBox
//
//  Created by Vitalis on 01/05/2020.
//  Copyright © 2020 Neiron Digital. All rights reserved.
//

import UIKit
// ...........

public extension UICollectionView {
    // Reload collectionView with visible cells animation
    func reloadWithPopUpAnimation(onComplete: (() -> ())? = nil) {
        self.reloadData()
        self.layoutIfNeeded()
        let cells = self.visibleCells
        let cellsNumber = cells.count
        let tableHeight = self.bounds.size.height
        for cell in cells {
            cell.transform = CGAffineTransform(translationX: 0, y: tableHeight)
            cell.alpha = 0
        }
        for cell in cells {
            if let index = self.indexPath(for: cell)?.item {
                UIView.animate(withDuration: 0.4, delay: 0.05 * Double(index), usingSpringWithDamping: 0.9, initialSpringVelocity: 5, options: [.curveEaseOut], animations: {
                    cell.transform  = CGAffineTransform.identity
                }, completion: { _ in
                    if (index + 1) == cellsNumber {
                        onComplete?()
                    }
                })
                UIView.animate(withDuration: 0.3, delay: 0.05 * Double(index), animations: {
                    cell.alpha = 1
                }, completion: nil)
            } else {
                cell.alpha = 1
                cell.transform  = CGAffineTransform.identity
            }
        }
    }
}
