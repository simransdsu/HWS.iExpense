//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Simran Preet Narang on 2022-06-03.
//

import Foundation

struct ExpenseItem: Codable, Identifiable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Double
}
