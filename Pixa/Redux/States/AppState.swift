//
//  AppState.swift
//  Pixa
//
//  Created by Erol KOCAMAN on 7/4/18.
//  Copyright © 2018 Erol KOCAMAN. All rights reserved.
//

import ReSwift
import ReSwiftRouter

struct AppState: StateType {
    var navigationState: NavigationState
    var searchState: SearchState = SearchState()
}
