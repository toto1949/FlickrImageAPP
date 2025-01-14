//
//  ContentView.swift
//  CVSFlickrAPP
//
//  Created by Taooufiq El moutaoouakil on 1/14/25.
//

import SwiftUI
 
struct ContentView: View {
    @StateObject private var viewModel = FlickrViewModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                SearchBar(text: $viewModel.searchText)
                
                if viewModel.isLoading {
                    LoadingView()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                } else if let error = viewModel.errorMessage {
                    ErrorView(message: error)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                } else {
                    ImageGridView(images: viewModel.images)
                }
            }
            .navigationTitle(UIStrings.flickrSearch.rawValue)
        }
    }
}
