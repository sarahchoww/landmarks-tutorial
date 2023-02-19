//
//  ContentView.swift
//  Landmarks
//
//  Created by Sarah Chow on 2023-02-19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
        }
        .padding() // Padding to the entire VStack
    }
}

// Preview for the view
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
