//
//  Copyright © 2020 Hannah.Haratian. All rights reserved.
//

import UIKit

class AppCoordinator {
    
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func strat() {
        let rootViewController = RootViewController.instantiate()
        let navigationController = UINavigationController(rootViewController: rootViewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
