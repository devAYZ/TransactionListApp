//
//  TransactionListVM.swift
//  TransactionListApp
//
//  Created by Ayokunle Fatokimi on 08/10/2026.
//

import SwiftUI
public import Combine

//  Create the singleton class
class TransactionListVM: ObservableObject {
    
    // Published property to holding the data array
    @Published var tasks: [Transaction] = []
    
    // Private initializer ensures only the singleton instance is used
    init() {
        loadInitialData()
    }
    
    private func loadInitialData() {
        tasks = [
            .init(
                id: .init(),
                type: .transfer, description: "Transfer to John",
                amount: 50_000, date: .now, status: .successful, credit: false
            ),
            .init(
                id: .init(),
                type: .airtime, description: "Airtime",
                amount: 5_000, date: .now, status: .successful, credit: false
            ),
            .init(
                id: .init(),
                type: .airtime,
                description: "Transfer from Sarah",
                amount: 100_000, date: .now, status: .pending, credit: true
            ),
            .init(
                id: .init(),
                type: .payment,
                description: "Netflix",
                amount: 15_000, date: .now, status: .pending, credit: false
            )
        ]
    }
}

