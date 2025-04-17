//
//  NetworkError.swift
//  FlickerImageApp
//
//  Created by Taooufiq El moutaoouakil on  04/16/25
//
 
import Foundation
enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingError
    case serverError(String)
}
