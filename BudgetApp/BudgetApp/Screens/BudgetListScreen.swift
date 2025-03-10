//
//  BudgetListScreen.swift
//  BudgetApp
//
//  Created by Lucas  Alcantara  on 28/02/25.
//

import SwiftUI

struct BudgetListScreen: View {
    
    @FetchRequest(sortDescriptors: []) private var budgets: FetchedResults<Budget>
    @State private var isPresented: Bool = false
    
    var body: some View {
        VStack {
            List(budgets) { budget in
                NavigationLink {
                    BudgetDetailScreen(budget: budget)
                } label: {
                    BudgetCellView(budget: budget)
                }
            }
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
    }.environment(\.managedObjectContext, CoreDataProvider.preview.context)
}

