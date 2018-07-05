//
//  RootRoutable.swift
//  Pixa
//
//  Created by Erol KOCAMAN on 7/4/18.
//  Copyright © 2018 Erol KOCAMAN. All rights reserved.
//

import ReSwiftRouter

class RootRoutable: Routable {
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func setToSplashViewController() -> Routable {
        self.window.rootViewController = SplashViewController(nib: R.nib.splashViewController)
        
//        self.window.rootViewController = R.storyboard.splash.instantiateInitialViewController()
        
        return SplashViewRoutable()
    }
    
    func setToSearchViewController() -> Routable {
        self.window.rootViewController = SearchViewController(nib: R.nib.searchViewController)
        
//        self.window.rootViewController = R.storyboard.search.instantiateInitialViewController()
        
        return SearchViewRoutable(window.rootViewController!)
    }
    
    func changeRouteSegment(
        _ from: RouteElementIdentifier,
        to: RouteElementIdentifier,
        animated: Bool,
        completionHandler: @escaping RoutingCompletionHandler
        ) -> Routable {
        
        if to == RouteNames.search {
            completionHandler()
            return setToSearchViewController()
        } else if to == RouteNames.splash {
            completionHandler()
            return setToSplashViewController()
        } else {
            fatalError("Route not supported!")
        }
    }
    
    func pushRouteSegment(
        _ routeElementIdentifier: RouteElementIdentifier,
        animated: Bool,
        completionHandler: @escaping RoutingCompletionHandler
        ) -> Routable {
        
        if routeElementIdentifier == RouteNames.search {
            completionHandler()
            return setToSearchViewController()
        } else if routeElementIdentifier == RouteNames.splash {
            completionHandler()
            return setToSplashViewController()
        } else {
            fatalError("Route not supported!")
        }
    }
}
