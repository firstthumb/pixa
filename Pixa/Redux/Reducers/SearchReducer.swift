//
//  SearchReducer.swift
//  Pixa
//
//  Created by Erol KOCAMAN on 7/4/18.
//  Copyright © 2018 Erol KOCAMAN. All rights reserved.
//

import ReSwift
import Result

func searchReducer(action: Action, state: SearchState?) -> SearchState {
    var state = state ?? SearchState()
    
    switch action {
    case let action as SearchImagesAction:
        state.query = action.query
    case _ as ResetSearchAction:
        state.query = nil
    default:
        break
    }
    
    return state
}

