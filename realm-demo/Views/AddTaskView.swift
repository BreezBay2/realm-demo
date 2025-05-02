//
//  AddTaskView.swift
//  realm-demo
//
//  Created by Taro Altrichter on 29.04.25.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    @State private var title: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Add new task")
                .font(.title3).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("Enter your Task...", text: $title)
                .textFieldStyle(.roundedBorder)
            
            Button {
                if title != "" {
                    realmManager.addTask(taskTitle: title)
                }
                dismiss()
            } label: {
                Text("Add")
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color(.systemBlue))
                    .cornerRadius(15)
            }
            
            Spacer()
        }
        .padding(.top, 40)
        .padding(.horizontal)
    }
}

#Preview {
    AddTaskView()
        .environmentObject(RealmManager())
}
