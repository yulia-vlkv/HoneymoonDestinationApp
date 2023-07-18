//
//  ContentView.swift
//  HoneymoonDestination
//
//  Created by Iuliia Volkova on 16.07.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardView(honeymoon: honeymoonData[1])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
