//
//  ContentView.swift
//  HoneymoonDestination
//
//  Created by Iuliia Volkova on 16.07.2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    @State var showAlert: Bool = false
    @State var showGuide: Bool = false
    
    // MARK: - Body
    var body: some View {
        VStack {
            HeaderView(showGuideView: $showGuide)
            
            Spacer()
            
            CardView(honeymoon: honeymoonData[2])
            
            //Fixme: Add padding to the cards
            
            Spacer()
            
            FooterView(showBookingAlert: $showAlert)
        }
        .alert(isPresented: $showAlert) {
          Alert(
            title: Text("SUCCESS"),
            message: Text("Wishing a lovely and most precious of the times together for the amazing couple."),
            dismissButton: .default(Text("Happy Honeymoon!")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
