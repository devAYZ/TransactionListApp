//
//  TransactionModel.swift
//  TransactionListApp
//
//  Created by Ayokunle Fatokimi on 08/10/2026.
//

import Foundation

struct Transaction: Identifiable {
    let id: UUID
    let type: TransactionType
    let description: String
    let amount: Double
    let date: Date
    let status: TransactionStatus
    let credit: Bool
}

enum TransactionType {
    case transfer
    case payment
    case airtime
    case withdrawal
}

enum TransactionStatus: String {
    case successful
    case pending
    case failed
}
