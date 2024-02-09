//
//  WinsLoosesViewModel.swift
//  RBTest
//
//  Created by Anton on 09.02.24.
//

import SwiftUI

final class WinsLoosesViewModel: ObservableObject {
    
    @Published var model = WinsLoosesModel(countOfBets: 32, countOfWins: 16, countOfLooses: 11, countOfReturns: 5, percentOfWins: 50, percentOfLooses: 34, percentOfReturns: 16)
}

