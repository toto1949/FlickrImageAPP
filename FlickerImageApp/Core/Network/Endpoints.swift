//
//  Endpoints.swift
//  FlickerImageApp
//
//  Created by Taooufiq El moutaoouakil on  04/16/25
//

import Foundation
 
enum Endpoint {
    case searchImages(tags: String)
    
    var url: URL? {
        switch self {
        case .searchImages(let tags):
            let encodedTags = tags.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
            return URL(string: "\(Constants.API.baseURL)?format=json&nojsoncallback=1&tags=\(encodedTags)")
        }
    }
}
