//
//  SearchViewRoutable.swift
//  Pixa
//
//  Created by Erol KOCAMAN on 7/4/18.
//  Copyright © 2018 Erol KOCAMAN. All rights reserved.
//

import ReSwiftRouter

class SearchViewRoutable: Routable {
    
    let viewController: UIViewController
    
    init(_ viewController: UIViewController) {
        self.viewController = viewController
    }
    
    func pushRouteSegment(
        _ routeElementIdentifier: RouteElementIdentifier,
        animated: Bool,
        completionHandler: @escaping RoutingCompletionHandler) -> Routable {
      
        fatalError("Cannot handle this route change!")
    }
    
    public func popRouteSegment(
        _ routeElementIdentifier: RouteElementIdentifier,
        animated: Bool,
        completionHandler: @escaping RoutingCompletionHandler) {
        
    }
    
    public func changeRouteSegment(
        _ from: RouteElementIdentifier,
        to: RouteElementIdentifier,
        animated: Bool,
        completionHandler: @escaping RoutingCompletionHandler) -> Routable {
        
        return SearchViewRoutable(viewController)
    }
}
