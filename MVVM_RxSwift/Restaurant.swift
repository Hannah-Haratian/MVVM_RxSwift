//
//  Copyright © 2020 Hannah.Haratian. All rights reserved.
//

import Foundation

struct Restaurant: Decodable {
    let name: String
    let cuisine: Cuisine
}


enum Cuisine: String, Decodable {
    case italian
    case assian
    case german
    case english
}
