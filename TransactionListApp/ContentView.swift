//
//  ContentView.swift
//  TransactionListApp
//
//  Created by Ayokunle Fatokimi on 08/10/2026.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    // 3. Observe the singleton class instance
    @ObservedObject var vmTransaction = TransactionListVM()
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            List(vmTransaction.tasks) { task in
                VStack {
                    HStack {
                        Text(task.description)
                        Spacer()
                        Text(String(task.amount))
                            .foregroundStyle(
                                task.credit ? Color.green : Color.red
                            )
                    }
                    HStack {
                        Text(task.date.description)
                        Spacer()
                        Text(task.status.rawValue.capitalized)
                    }
                }
                
            }
            .navigationTitle("Transaction List")
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search transactions...")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}




#Preview {
    ContentView()
}
