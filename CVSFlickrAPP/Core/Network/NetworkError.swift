//
//  NetworkError.swift
//  CVSFlickrAPP
//
//  Created by Taooufiq El moutaoouakil on 1/14/25.
//
 
import Foundation
enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingError
    case serverError(String)
}
