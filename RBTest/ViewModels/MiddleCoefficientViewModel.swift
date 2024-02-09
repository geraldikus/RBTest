//
//  MiddleCoefficientViewModel.swift
//  RBTest
//
//  Created by Anton on 08.02.24.
//

import SwiftUI

final class MiddleCoefficientViewModel: ObservableObject {
    @Published var model: WinsModel = WinsModel(winCoeff: 0.0, looseCoeff: 0.0, returnCoeff: 0.0, percent1: 0.0, percent2: 0.0, percent3: 0.0)
    
    func generateRandomData() {
        let randomWinCoeff = Double.random(in: 1.0...2.0)
        let randomLooseCoeff = Double.random(in: 1.0...2.0)
        let randomReturnCoeff = Double.random(in: 1.0...2.0)
        let randomPercent1 = Double.random(in: 0.0...100.0)
        let randomPercent2 = Double.random(in: 0.0...100.0)
        let randomPercent3 = Double.random(in: 0.0...100.0)
        
        model = WinsModel(winCoeff: randomWinCoeff, looseCoeff: randomLooseCoeff, returnCoeff: randomReturnCoeff, percent1: randomPercent1, percent2: randomPercent2, percent3: randomPercent3)
    }
}
