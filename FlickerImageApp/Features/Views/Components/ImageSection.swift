//
//  ImageSection.swift
//  FlickerImageApp
//
//  Created by Taooufiq El moutaoouakil on  04/16/25
//

import SwiftUI

struct ImageSection: View {
    let image: FlickrImage

    var body: some View {
        AsyncImage(url: URL(string: image.imageUrl)) { phase in
            switch phase {
            case .empty:
                ProgressView()
                    .frame(maxWidth: .infinity, minHeight: UIScreen.main.bounds.height * 0.3)

            case .success(let imageSection):
                imageSection
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.1))

            case .failure:
                VStack {
                    Image(systemName: "photo")
                        .frame(maxWidth: .infinity, minHeight: UIScreen.main.bounds.height * 0.3)
                    Text(UIStrings.failedToLoadImage.rawValue)
                        .font(.caption)
                        .foregroundColor(.gray)
                }

            @unknown default:
                EmptyView()
                    .frame(maxWidth: .infinity, minHeight: UIScreen.main.bounds.height * 0.3)
            }
        }
        .accessibilityElement()
        .accessibilityLabel("Image titled \(image.title?.isEmpty == false ? image.title! : "Unknown")")
        .accessibilityHint("Tap to view image details")
    }
}
