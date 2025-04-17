//
//  FlickrViewModel.swift
//  FlickerImageApp
//
//  Created by Taooufiq El moutaoouakil on  04/16/25
//

import Combine
import SwiftUI

@MainActor
class FlickrViewModel: ObservableObject {
    @Published var images: [FlickrImage] = []
    @Published var isLoading = false
    @Published var errorMessage: String?
    @Published var searchText: String = ""
    
    private let networkManager: NetworkManaging
    private var cancellables = Set<AnyCancellable>()
    
    init(networkManager: NetworkManaging = NetworkManager.shared) {
        self.networkManager = networkManager
        
        $searchText
            .debounce(for: .milliseconds(400), scheduler: RunLoop.main)
            .removeDuplicates()
            .sink { [weak self] newValue in
                Task {
                    await self?.search(for: newValue)
                }
            }
            .store(in: &cancellables)
        
        Task {
            await loadDefaultImages()
        }
    }
    
    func search(for query: String) async {
        guard !query.isEmpty else {
            await loadDefaultImages()
            return
        }
        
        isLoading = true
        defer { isLoading = false }
        
        let tags = query.split(separator: ",").map { $0.trimmingCharacters(in: .whitespaces) }
        
        if tags.count > 1 {
            await searchForMultipleTags(tags)
        } else {
            await searchForSingleTag(query)
        }
    }
    
    private func searchForSingleTag(_ tag: String) async {
        do {
            let response: FlickrResponse = try await networkManager.fetch(endpoint: .searchImages(tags: tag))
            images = response.items
            errorMessage = nil
        } catch {
            errorMessage = error.localizedDescription
            images = []
        }
    }
    
    private func searchForMultipleTags(_ tags: [String]) async {
        var allImages: [FlickrImage] = []
        
        for tag in tags {
            do {
                let response: FlickrResponse = try await networkManager.fetch(endpoint: .searchImages(tags: tag))
                allImages.append(contentsOf: response.items)
            } catch {
                errorMessage = error.localizedDescription
            }
        }
        
        images = Array(Set(allImages))
    }
    
    private func loadDefaultImages() async {
        await search(for: "Nature")
    }
}
