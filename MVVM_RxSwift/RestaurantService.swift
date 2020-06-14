//
//  Copyright © 2020 Hannah.Haratian. All rights reserved.
//

import Foundation
import RxSwift

class RestaurantService {
    func fetchRestaurants()-> Observable<[Restaurant]>{
        return Observable.create { observer -> Disposable in
            let task = URLSession.shared.dataTask(with: URL(string: "url-here")!) { data, _ , _ in
                guard let data = data else {
                    observer.onError(NSError(domain: "", code: -1, userInfo: nil))
                    return
                }
                do {
                    let restaurants = try JSONDecoder().decode([Restaurant].self, from: data)
                    observer.onNext(restaurants)
                } catch {
                    observer.onError(error)
                }
            }
            task.resume()
            return Disposables.create {
                task.cancel()
            }
        }
    }
}
