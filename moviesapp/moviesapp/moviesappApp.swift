//
//  moviesappApp.swift
//  moviesapp
//
//  Created by m1 on 20/10/2025.
//

import SwiftUI
import SwiftData

@main
struct moviesappApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            MoviesView()
        }
        .modelContainer(sharedModelContainer)
    }
}
