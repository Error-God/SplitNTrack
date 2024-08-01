//
//  Expense.swift
//  SplitNTrack
//
//  Created by Kumar, Govinda on 22/07/24.
//

import Foundation

struct Expense: Codable, Identifiable {
    var id: UUID
    var description: String
    var amount: Double
    var dateOfExpense: Date
    var paidBy: UUID
    var sharedWith: [UUID]
    var categoryId: UUID?
}

