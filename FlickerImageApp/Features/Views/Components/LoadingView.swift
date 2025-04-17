//
//  LoadingView.swift
//  FlickerImageApp
//
//  Created by Taooufiq El moutaoouakil on  04/16/25
//

import SwiftUI
 
struct LoadingView: View {
    var body: some View {
        VStack {
            ProgressView()
            Text(UIStrings.loading.rawValue)
                .foregroundColor(.secondary)
        }
    }
}
