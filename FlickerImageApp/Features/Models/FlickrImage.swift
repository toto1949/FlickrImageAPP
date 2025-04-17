//
//  FlickrImage.swift
//  FlickerImageApp
//
//  Created by Taooufiq El moutaoouakil on  04/16/25
//
 
import Foundation

struct FlickrImage: Codable, Identifiable, Hashable {
    let id = UUID()
    let title: String?
    let link: String?
    let media: [String: String]?
    let dateTaken: String?
    let description: String?
    let published: String?
    let author: String?
    
    enum CodingKeys: String, CodingKey {
        case title, link, media, description, published, author
        case dateTaken = "date_taken"
    }
    
    var imageUrl: String {
        media?["m"] ?? ""
    }
    
    var formattedDate: String {
        Date.formatted(from: published, inputFormat: "yyyy-MM-dd'T'HH:mm:ssZ", outputStyle: .medium) ?? published!
    }
}

struct FlickrResponse: Codable {
    let items: [FlickrImage]
}

extension FlickrImage {
    var imageSize: String? {
        guard let desc = description else { return nil }
        let pattern = #"width=["'](\d+)["']\sheight=["'](\d+)["']"#
        if let regex = try? NSRegularExpression(pattern: pattern),
           let match = regex.firstMatch(in: desc, range: NSRange(desc.startIndex..., in: desc)),
           let widthRange = Range(match.range(at: 1), in: desc),
           let heightRange = Range(match.range(at: 2), in: desc) {
            return "\(desc[widthRange]) x \(desc[heightRange]) px"
        }
        return nil
    }
}
