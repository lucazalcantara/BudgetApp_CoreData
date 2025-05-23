//
//  BudgetCellView.swift
//  BudgetApp
//
//  Created by Lucas  Alcantara  on 03/03/25.
//

import Foundation
import SwiftUI

struct BudgetCellView: View {
    
    let budget: Budget
    
    var body: some View {
        HStack {
            Text(budget.title ?? "")
            Spacer()
            Text(budget.limit, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
        }
    }
}

