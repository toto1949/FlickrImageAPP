//
//  CustomTextField.swift
//  FlickerImageApp
//
//  Created by Taooufiq El moutaoouakil on  04/16/25
//

import SwiftUI
 
struct CustomTextField: View {
    @Binding var text: String
    
    var placeholder: String
    
    var body: some View {
        TextField(placeholder, text: $text)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .overlay(
                HStack {
                    if !text.isEmpty {
                        Button(action: {
                            self.text = ""
                        }) {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.gray)
                                .padding(.trailing, 8)
                        }
                    }
                }
                .padding(.horizontal),
                alignment: .trailing
            )
    }
}

