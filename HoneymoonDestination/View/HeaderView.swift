//
//  HeaderView.swift
//  HoneymoonDestination
//
//  Created by Iuliia Volkova on 18.07.2023.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - Properties
    
    @Binding var showGuideView: Bool
    
    // MARK: - Body
    var body: some View {
        HStack {
            Button(action: {
                //Action
                print("Information")
            }) {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
            
            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button(action: {
                self.showGuideView.toggle()
            }) {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            }
            .accentColor(Color.primary)
            .sheet(isPresented: $showGuideView) {
                GuideView()
            }
        }
        .padding()
    }
}


// MARK: - Preview
struct HeaderView_Previews: PreviewProvider {
    
    @State static var showGuide: Bool = false
    
    static var previews: some View {
        HeaderView(showGuideView: $showGuide)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
