//
//  ImageCell.swift
//  FlickerImageApp
//
//  Created by Taooufiq El moutaoouakil on  04/16/25
//

import SwiftUI

struct ImageCell: View {
    let imageUrl: String
    let title: String

    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { phase in
            switch phase {
            case .empty:
                ProgressView()
                    .frame(width: 100, height: 100)
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipped()
            case .failure:
                Image(systemName: "photo")
                    .frame(width: 100, height: 100)
            @unknown default:
                EmptyView()
                    .frame(width: 100, height: 100)
            }
        }
        .frame(width: 100, height: 100)
        .background(Color.gray.opacity(0.1))
        .accessibilityElement()
        .accessibilityLabel("Image titled \(title.isEmpty ? "Unknown" : title)")
        .accessibilityHint("Tap to view image details")
    }
}
