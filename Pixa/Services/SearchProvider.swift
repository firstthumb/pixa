//
//  SearchProvider.swift
//  Pixa
//
//  Created by Erol KOCAMAN on 7/4/18.
//  Copyright © 2018 Erol KOCAMAN. All rights reserved.
//

import Foundation
import Moya

enum SearchProvider : TargetType {
    case searchImages(query: String)
    
    var baseURL: URL {
        return URL(string: "https://pixabay.com/api")!
    }
    
    var path: String {
        switch self {
        case .searchImages:
            return "/"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .searchImages:
            return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case .searchImages:
            let parameters: [String: Any] = ["key": "9463410-eaa578b288fc24adfc6b1021f", "q": "flower", "image_type": "photo"]
            return .requestParameters(parameters: parameters, encoding: URLEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        return ["Content-Type": "application/json"]
    }
}
