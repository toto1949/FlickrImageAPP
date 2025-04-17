//
//  ImageGridView.swift
//  FlickerImageApp
//
//  Created by Taooufiq El moutaoouakil on  04/16/25
//

import SwiftUI
 
struct ImageGridView: View {
    let images: [FlickrImage]
    
    private let columns = [
        GridItem(.adaptive(minimum: 100), spacing: 2)
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 2) {
                ForEach(images) { image in
                    NavigationLink(destination: ImageDetailView(image: image)) {
                        ImageCell(imageUrl: image.imageUrl, title: image.title!)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .padding(.horizontal, 2)
        }
    }
}
