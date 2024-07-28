//
//  Expense.swift
//  SplitNTrack
//
//  Created by Kumar, Govinda on 22/07/24.
//

import Foundation

struct Expense: Codable, Identifiable {
    var id: Int
    var description: String
    var amount: Double
    var dateOfExpense: Date
    var paidBy: Int
    var sharedWith: [Int]
    var categoryId: Int?
}

