//
//  Logger.swift
//  CVSFlickrAPP
//
//  Created by Taooufiq El moutaoouakil on 1/14/25.
//

import Foundation
 
enum Logger {
    static func log(error: Error,additionalInfo: String? = nil) {
        var logMessage = "Error: \(error.localizedDescription)"
        if let additionalInfo = additionalInfo {
            logMessage += " - \(additionalInfo)"
        }
        print(logMessage)
    }
}
