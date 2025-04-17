//
//  DateExtension.swift
//  FlickerImageApp
//
//  Created by Taooufiq El moutaoouakil on  04/16/25
//
 
import Foundation
extension Date {
    static func formatted(from dateString: String?, inputFormat: String, outputStyle: DateFormatter.Style) -> String? {
        guard let dateString  =  dateString else {
            return nil
        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = inputFormat
        guard let date = dateFormatter.date(from: dateString) else {
            return nil
        }
        dateFormatter.dateStyle = outputStyle
        dateFormatter.timeStyle = .short
        return dateFormatter.string(from: date)
    }
}
