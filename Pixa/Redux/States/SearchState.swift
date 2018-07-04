//
//  SearchState.swift
//  Pixa
//
//  Created by Erol KOCAMAN on 7/4/18.
//  Copyright © 2018 Erol KOCAMAN. All rights reserved.
//

import Foundation
import ReSwift

struct SearchState: StateType, Encodable {
    var query: String?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(query, forKey: .query)
    }
    
    private enum CodingKeys: String, CodingKey {
        case query
    }
}
