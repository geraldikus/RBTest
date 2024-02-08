//
//  ProgressBarView.swift
//  RBTest
//
//  Created by Anton on 08.02.24.
//

import SwiftUI

struct ProgressBarView: View {
    var percentage: Double
    var barColor: Color
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .opacity(0.2)
                    .foregroundColor(Color.gray)
                
                Rectangle()
                    .frame(width: CGFloat(self.percentage) / 100 * geometry.size.width, height: geometry.size.height)
                    .foregroundColor(self.barColor)
                    .animation(.linear(duration: 0.5))
                    .clipped()
            }
        }
        .frame(height: 10)
    }
}

#Preview {
    ProgressBarView(percentage: 40, barColor: .green)
}
