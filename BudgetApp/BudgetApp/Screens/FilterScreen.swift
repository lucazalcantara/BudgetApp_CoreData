//
//  FilterScreen.swift
//  BudgetApp
//
//  Created by Lucas  Alcantara  on 28/05/25.
//

import SwiftUI

struct FilterScreen: View {
    
    @Environment(\.managedObjectContext) private var context
    @State private var selectedTags: Set<Tag> = []
    @State private var filteredExpenses: [Expense] = []
    
    private func filterTags() {
        
        let selectedTagNames = selectedTags.map { $0.name }
        
        let request = Expense.fetchRequest()
        request.predicate = NSPredicate(format: "ANY tags.name IN %@", selectedTagNames)
        
        do {
            filteredExpenses = try context.fetch(request)
        } catch {
            print(error)
        }
        
    }
    var body: some View {
        VStack(alignment: .leading) {
            TagsView(selectedTags: $selectedTags)
                .onChange(of: selectedTags, filterTags)
            
            List(filteredExpenses) { expense in
                ExpenseCellView(expense: expense)
            
            }
        
            Spacer()
        }.padding()
        .navigationTitle("Filter")
    }
}

#Preview {
    NavigationStack {
        FilterScreen()
            .environment(\.managedObjectContext, CoreDataProvider.preview.context)
    }
}
