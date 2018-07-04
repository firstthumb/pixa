//
//  SearchAction.swift
//  Pixa
//
//  Created by Erol KOCAMAN on 7/4/18.
//  Copyright © 2018 Erol KOCAMAN. All rights reserved.
//

import ReSwift
import Moya
import Result
import ObjectMapper

extension SearchState {
    public static func searchImages(query: String) -> SearchImages {
        _ = MoyaProvider<SearchProvider>()
            .request(.searchImages(query: query)) { event in
                switch event {
                case .success(let response):
                    do {
                        if let json = try response.mapJSON() as? [String: Any], let statuses = json["hits"] as? [[String : Any]] {
                            let images = Mapper<Image>().mapArray(JSONArray: statuses)
                            print("Images : \(images)")
                            store.dispatch(SearchImagesAction(query: query))
                        }
                    } catch {
                        store.dispatch(SearchImagesAction(query: "nil"))
                    }
                    
                    break
                case .failure(_): store.dispatch(SearchImagesAction(query: "nil"))
                    break
                }
        }
        
        return SearchImages()
    }
}

struct SearchImages: Action {}

struct SearchImagesAction: Action {
    let query: String
}

struct ResetSearchAction: Action {}
