//
//  ContentView.swift
//  Landmarks
//
//  Created by Sarah Chow on 2023-02-19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

// Preview for the view
struct ContentView_Previews: PreviewProvider {
        
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
