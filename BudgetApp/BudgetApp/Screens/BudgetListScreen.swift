//
//  BudgetListScreen.swift
//  BudgetApp
//
//  Created by Lucas  Alcantara  on 28/02/25.
//

import SwiftUI

struct BudgetListScreen: View {
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        VStack {
            Text("Budgets will be displayed here")
        }.navigationTitle("Budget App")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add budget") {
                        isPresented = true
                    }
                }
            }
            .sheet(isPresented: $isPresented, content: {
                AddBudgetScreen()
            })
    }
}

#Preview {
    NavigationStack {
        BudgetListScreen()
    }
}
