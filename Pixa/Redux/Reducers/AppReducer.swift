//
//  AppReducer.swift
//  Pixa
//
//  Created by Erol KOCAMAN on 7/4/18.
//  Copyright © 2018 Erol KOCAMAN. All rights reserved.
//

import ReSwift
import ReSwiftRouter

func appReducer(action: Action, state: AppState?) -> AppState {
    return AppState(
        navigationState: NavigationReducer.handleAction(action, state: state?.navigationState),
        searchState: searchReducer(action: action, state: state?.searchState)
    )
}

