//
//  ContentView.swift
//  RBTest
//
//  Created by Anton on 08.02.24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            MiddleCoefficientView()
            WinsLoosesView()
        }
        .padding()
    }
}

#Preview {
    MainView()
}
