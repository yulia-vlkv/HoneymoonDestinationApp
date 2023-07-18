//
//  ContentView.swift
//  HoneymoonDestination
//
//  Created by Iuliia Volkova on 16.07.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[2])
            
            //Fixme: Add paddint to the cards
            
            Spacer()
            
            FooterView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
