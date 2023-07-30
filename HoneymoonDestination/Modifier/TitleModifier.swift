//
//  TitleModifier.swift
//  HoneymoonDestination
//
//  Created by Iuliia Volkova on 23.07.2023.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}
