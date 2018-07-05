//
//  Image.swift
//  Pixa
//
//  Created by Erol KOCAMAN on 7/4/18.
//  Copyright © 2018 Erol KOCAMAN. All rights reserved.
//

import Foundation
import ObjectMapper

class Image: Mappable, Codable, CustomStringConvertible {
    var id: Int!
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
    }
    
    var description: String {
        var description = ""
        description += "ID : \(self.id!)"
        return description
    }
}
