//
//  MultiProgressBarView.swift
//  RBTest
//
//  Created by Anton on 08.02.24.
//

import SwiftUI

struct PercentBarView: View {
    let color: Color
    let percentage: Double
    let maxWidth: CGFloat 
    
    
    var body: some View {
        VStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 1.0)
                .fill(color)
                .frame(width: maxWidth * CGFloat(percentage) / 100, height: 10)
                
            
        }
    }
}


#Preview {
    PercentBarView(color: .green, percentage: 60, maxWidth: 400)
}
