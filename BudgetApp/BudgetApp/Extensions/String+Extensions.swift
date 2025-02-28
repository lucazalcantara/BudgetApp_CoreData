//
//  String+Extensions.swift
//  BudgetApp
//
//  Created by Lucas  Alcantara  on 28/02/25.
//

import Foundation

extension String {
    
    var isEmptyOrWhitespace: Bool {
        trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
