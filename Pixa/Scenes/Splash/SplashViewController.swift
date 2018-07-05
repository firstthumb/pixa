//
//  SplashViewController.swift
//  Pixa
//
//  Created by Erol KOCAMAN on 7/4/18.
//  Copyright © 2018 Erol KOCAMAN. All rights reserved.
//

import UIKit
import ReSwift
import ReSwiftRouter

class SplashViewController: UIViewController, StoreSubscriber, Routable {
    typealias StoreSubscriberStateType = SearchState
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        store.subscribe(self) {
            $0.select {
                $0.searchState
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        store.unsubscribe(self)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        store.dispatch(SearchState.searchImages(query: "flower"))
    }
    
    func newState(state: SearchState) {
        print("Current State : \(String(describing: state.query))")
    }
}
