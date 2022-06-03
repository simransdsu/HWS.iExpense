//
//  ContentView.swift
//  iExpense
//
//  Created by Simran Preet Narang on 2022-06-03.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var expenses = Expenses()
    @State var showAddView = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(expenses.items) { item in
                    VStack {
                        Text(item.name)
                            .font(.title3)
                        Text("$\(item.amount, format: .currency(code: "USD"))")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }.onDelete(perform: removeItems)
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button {
                    showAddView.toggle()
                } label: {
                    Image(systemName: "plus")
                }
            }.sheet(isPresented: $showAddView) {
                AddView(expenses: expenses)
            }
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
