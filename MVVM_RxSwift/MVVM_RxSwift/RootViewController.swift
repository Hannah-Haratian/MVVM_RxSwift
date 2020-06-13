//
//  Copyright © 2020 Hannah.Haratian. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    static func instantiate()-> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let viewController = storyboard.instantiateInitialViewController() as! RootViewController
        return viewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

