//
//  SearchBar.swift
//  CVSFlickrAPP
//
//  Created by Taooufiq El moutaoouakil on 1/14/25.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            CustomTextField(text: $text, placeholder: UIStrings.searchImagesPlaceholder.rawValue)
        }
        .padding(.horizontal)
    }
}
