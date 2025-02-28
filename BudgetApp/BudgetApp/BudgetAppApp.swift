//
//  BudgetAppApp.swift
//  BudgetApp
//
//  Created by Lucas  Alcantara  on 28/02/25.
//

import SwiftUI

@main
struct BudgetAppApp: App {
    
    let provider: CoreDataProvider
    
    init() {
        provider = CoreDataProvider()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, provider.context)
        }
    }
}
