//
//  WinsLoosesView.swift
//  RBTest
//
//  Created by Anton on 08.02.24.
//

import SwiftUI

struct WinsLoosesView: View {
    
    @ObservedObject var viewModel = WinsLoosesViewModel()
    
    let spacing: CGFloat = 6
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15) {
            Text("Выигрыши/проигрыши по букмекерам")
                .fontWeight(.bold)
            
            HStack(spacing: spacing) {
                Image("WH")
                    .resizable()
                    .frame(width: 120, height: 30)
                
                Text("\(viewModel.model.countOfBets) ставки")
            }
            
            GeometryReader { geometry in
                let size = geometry.size
                
                HStack(alignment: .top, spacing: spacing) {
                    linearGraph(width: size.width, alignment: .leading, percentage: viewModel.model.percentOfWins, spacing: spacing, color: .green, numberOfBets: viewModel.model.countOfWins)
                    linearGraph(width: size.width, alignment: .leading, percentage: viewModel.model.percentOfLooses, spacing: 5, color: .red, numberOfBets: viewModel.model.countOfLooses)
                    linearGraph(width: size.width, alignment: .trailing, percentage: viewModel.model.percentOfReturns, spacing: 5, color: .gray, numberOfBets: viewModel.model.countOfReturns)
                }
            }
            .frame(height: 40)
        }
        .padding()
        .border(.black)
    }
}

private extension WinsLoosesView {
    func linearGraph(width: CGFloat, alignment: HorizontalAlignment, percentage: Double, spacing: CGFloat, color: Color, numberOfBets: Int) -> some View {
        VStack(alignment: alignment) {
            Rectangle()
                .foregroundStyle(color)
                .frame(width: (width / 100 * CGFloat(percentage)) - spacing, height: 10)
                .animation(.linear(duration: 0.5))
            
            Text("\(numberOfBets) (\(String(Int(percentage)))%)")
                .font(.caption)
        }
    }
}

#Preview {
    WinsLoosesView()
}
