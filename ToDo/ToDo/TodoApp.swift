//
//  TodoApp.swift
//  Todo
//
//  Created by Francesco Paolo Dellaquila on 29/03/22.
//

import SwiftUI

@main
struct TodoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SplashView()
        }
    }
}
