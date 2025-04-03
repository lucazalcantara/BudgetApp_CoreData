//
//  Locale+Extensions.swift
//  BudgetApp
//
//  Created by Lucas  Alcantara  on 03/04/25.
//

import Foundation

extension Locale {
    
    static var currencyCode: String {
        Locale.current.currency?.identifier ?? "USD"
    }
}
