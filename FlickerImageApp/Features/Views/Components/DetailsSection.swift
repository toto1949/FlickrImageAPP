//
//  DetailsSection.swift
//  FlickerImageApp
//
//  Created by Taooufiq El moutaoouakil on  04/16/25
//

import SwiftUI
 
struct DetailsSection: View {
    let image: FlickrImage
    @Environment(\.horizontalSizeClass) var sizeClass
    
    var body: some View {
        VStack(alignment: sizeClass == .compact ? .center : .leading, spacing: 8) {
            if let title = image.title, !title.isEmpty {
                Text(title)
                    .font(.title)
                    .dynamicTypeSize(.medium ... .accessibility5)
                
            } else {
                Text(UIStrings.titleNotAvailable.rawValue)
                    .font(.title)
                    .foregroundColor(.gray)
            }
            
            if  let description =  image.description, !description.isEmpty {
                Text(getAttributedString(from: description))
                    .font(.body)
                    .dynamicTypeSize(.medium ... .accessibility5)

            } else {
                Text(UIStrings.descriptionNotAvailable.rawValue)
                    .font(.body)
                    .foregroundColor(.gray)
            }
            
            Text("Author: \(cleanName(image.author ?? ""))")
                .font(.subheadline)
                .dynamicTypeSize(.medium ... .accessibility5)

            
            Text("Published: \(image.formattedDate)")
                .font(.caption)
                .dynamicTypeSize(.medium ... .accessibility5)

            if let size = image.imageSize {
                               Text("Dimensions: \(size)")
                                   .font(.footnote)
                                   .foregroundColor(.secondary)
                           }
        }
        .padding()
    }
}
