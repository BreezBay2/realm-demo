//
//  AddButton.swift
//  realm-demo
//
//  Created by Taro Altrichter on 29.04.25.
//

import SwiftUI

struct AddButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 60)
                .foregroundStyle(Color(.systemBlue))
            
            Text("+")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(Color(.white))
        }
        .frame(height: 60)
    }
}

#Preview {
    AddButton()
}
