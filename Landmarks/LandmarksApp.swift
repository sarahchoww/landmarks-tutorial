//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Sarah Chow on 2023-02-19.
//

import SwiftUI

@main // App entry point
struct LandmarksApp: App {
    
    // @StateObject initializes a model object only once during life time of app
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView() // Returns one or more scenes to provide content for display
                .environmentObject(modelData)
        }
    }
}
