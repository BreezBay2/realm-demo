//
//  ContentView.swift
//  realm-demo
//
//  Created by Taro Altrichter on 29.04.25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var realmManager = RealmManager()
    @State private var showAddTaskView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            TasksView()
                .environmentObject(realmManager)
            
            AddButton()
                .padding(35)
                .onTapGesture {
                    showAddTaskView.toggle()
                }
        }
        .sheet(isPresented: $showAddTaskView) {
            AddTaskView()
                .environmentObject(realmManager)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
    }
}

#Preview {
    ContentView()
}
