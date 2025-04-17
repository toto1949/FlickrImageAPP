//
//  NetworkManaging.swift
//  FlickerImageApp
//
//  Created by Taooufiq El moutaoouakil on  04/16/25
//

import Foundation
protocol NetworkManaging {
    func fetch<T: Decodable>(endpoint: Endpoint) async throws -> T
}
 
