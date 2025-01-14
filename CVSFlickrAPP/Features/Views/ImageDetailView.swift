//
//  ImageDetailView.swift
//  CVSFlickrAPP
//
//  Created by Taooufiq El moutaoouakil on 1/14/25.
//

import SwiftUI
 
struct ImageDetailView: View {
    let image: FlickrImage
    @Environment(\.horizontalSizeClass) var sizeClass
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                ImageSection(image: image)
                DetailsSection(image: image)
            }
            .padding()
        }
        
        .navigationBarItems(trailing: ShareLink(item: image.link ?? ""))
    }
}
