//
//  NoBarNavigation.swift
//  ToolBox
//
//  Created by Vitalis on 03/05/2020.
//  Copyright © 2020 Neiron Digital. All rights reserved.
//

import UIKit
// ...........

public class NoBarNavigation: UINavigationController {
    //  MARK: - INITS
    // ////////////////////////////////////
    public init() {
        super.init(nibName: nil, bundle: nil)
        setup()
    }
    public override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        setup()
    }
    public override init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?) {
        super.init(navigationBarClass: navigationBarClass, toolbarClass: toolbarClass)
        setup()
    }
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    //  MARK: - METHODS 🔰 PRIVATE
    // ////////////////////////////////////
    private func setup() {
        navigationBar.isHidden = true
        interactivePopGestureRecognizer?.isEnabled = false
    }
}
