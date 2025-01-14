//
//  ErrorView.swift
//  CVSFlickrAPP
//
//  Created by Taooufiq El moutaoouakil on 1/14/25.
//

import SwiftUI
 
struct ErrorView: View {
    let message: String
    
    var body: some View {
        VStack {
            Image(systemName: "exclamationmark.triangle")
                .font(.largeTitle)
                .foregroundColor(.red)
            Text(message)
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
        }
        .padding()
    }
}
