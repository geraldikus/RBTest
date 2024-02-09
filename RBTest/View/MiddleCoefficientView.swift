//
//  MiddleCoefficientView.swift
//  RBTest
//
//  Created by Anton on 08.02.24.
//

import SwiftUI

struct MiddleCoefficientView: View {
    
    @ObservedObject var viewModel = MiddleCoefficientViewModel()
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Средние коэффициенты")
                .fontWeight(.bold)
            
            HStack {
                VStack {
                    progressBar(percent: viewModel.model.percent1, barColor: .green)
                    progressBar(percent: viewModel.model.percent2, barColor: .red)
                    progressBar(percent: viewModel.model.percent3, barColor: .gray)
                }
                
                VStack(alignment: .leading) {
                    name(name: "Выигрыш")
                    name(name: "Проигрыш")
                    name(name: "Возврат")
                }
                .padding(.trailing, 10)
                
                VStack {
                    coefficient(coeff: viewModel.model.winCoeff)
                    coefficient(coeff: viewModel.model.looseCoeff)
                    coefficient(coeff: viewModel.model.returnCoeff)
                }
            }
        }
        .padding()
        .border(.black)
        .onAppear {
            viewModel.generateRandomData()
        }
    }
}

private extension MiddleCoefficientView {
    func name(name: String) -> some View {

        return Text(name)
            .foregroundStyle(Color.gray.opacity(0.8))
    }
    
    func coefficient(coeff: Double) -> some View {
        let formattedCoeff = String(format: "%.2f", coeff)
        
        return Text(formattedCoeff)
            .fontWeight(.bold)
    }
    
    func progressBar(percent: Double, barColor: Color) -> some View {
        
        return GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .opacity(0.2)
                    .foregroundColor(Color.gray)
                
                Rectangle()
                    .frame(width: CGFloat(percent) / 100 * geometry.size.width, height: geometry.size.height)
                    .foregroundColor(barColor)
                    .animation(.linear(duration: 0.5))
                    .clipped()
            }
        }
        .frame(height: 10)
    }
}

#Preview {
    MiddleCoefficientView()
}
