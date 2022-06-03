//
//  Expenses.swift
//  iExpense
//
//  Created by Simran Preet Narang on 2022-06-03.
//

import Foundation

class Expenses: ObservableObject {
    
    @Published var items = [ExpenseItem]()
}
