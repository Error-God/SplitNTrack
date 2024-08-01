//
//  ViewExpenseView.swift
//  SplitNTrack
//
//  Created by Kumar, Govinda on 22/07/24.
//

import SwiftUI

struct ViewExpenseView: View {
    @StateObject private var viewModel = ExpenseViewModel()
    @State private var showingAddExpenseSheet = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.expenses) { expense in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(expense.description)
                                .font(.headline)
                            Text("Amount: \(expense.amount, specifier: "%.2f")")
                                .font(.subheadline)
                            Text("Date: \(expense.dateOfExpense, formatter: dateFormatter)")
                                .font(.caption)
                        }
                        Spacer()
                        Button(action: {
                            viewModel.deleteExpense(id: expense.id)
                        }) {
                            Image(systemName: "trash")
                                .foregroundColor(.red)
                        }
                    }
                }
            }
            .navigationTitle("Expenses")
            .navigationBarItems(trailing: Button(action: {
                showingAddExpenseSheet = true
            }) {
                Image(systemName: "plus")
            })
            .sheet(isPresented: $showingAddExpenseSheet) {
                AddExpenseV(viewModel: viewModel)
            }
        }
    }
    
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
}

struct AddExpenseV: View {
    @ObservedObject var viewModel: ExpenseViewModel
    @State private var description: String = ""
    @State private var amount: String = ""
    @State private var dateOfExpense: Date = Date()
    @State private var paidBy: UUID = UUID()
    @State private var sharedWith: [UUID] = [] // Default to an empty array
    @State private var categoryId: UUID? = nil
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Expense Details")) {
                    TextField("Description", text: $description)
                    TextField("Amount", text: $amount)
                        .keyboardType(.decimalPad)
                    DatePicker("Date", selection: $dateOfExpense, displayedComponents: .date)
                }
                Section {
                    Button("Add Expense") {
                        guard let amount = Double(amount) else { return }
                        viewModel.addExpense(description: description, amount: amount, dateOfExpense: dateOfExpense, paidBy: paidBy, sharedWith: sharedWith, categoryId: categoryId)
                        dismiss()
                    }
                }
            }
            .navigationTitle("Add Expense")
            .navigationBarItems(trailing: Button("Cancel") {
                dismiss()
            })
        }
    }
    
    private func dismiss() {
        // Custom implementation to dismiss the sheet
    }
}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ExpenseListView()
//    }
//}


#Preview {
    ViewExpenseView()
}
