//
//  NetworkManaging.swift
//  CVSFlickrAPP
//
//  Created by Taooufiq El moutaoouakil on 1/14/25.
//

import Foundation
protocol NetworkManaging {
    func fetch<T: Decodable>(endpoint: Endpoint) async throws -> T
}
 
