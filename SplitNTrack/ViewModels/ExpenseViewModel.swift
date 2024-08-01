//
//  ExpenseViewModel.swift
//  SplitNTrack
//
//  Created by Kumar, Govinda on 22/07/24.
//

import Foundation
import Combine

class ExpenseViewModel: ObservableObject {
    @Published var expenses: [Expense] = []
}
