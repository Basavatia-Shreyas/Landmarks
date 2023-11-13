//
//  ContentView.swift
//  Landmarks
//
//  Created by Shreyas Basavatia on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
