//
//  TaskRow.swift
//  realm-demo
//
//  Created by Taro Altrichter on 29.04.25.
//

import SwiftUI

struct TaskRow: View {
    var task: String
    var completed: Bool
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: completed ? "record.circle" : "circle")
            
            Text(task)
        }
    }
}

#Preview {
    TaskRow(task: "Grocery Shopping", completed: true)
}
