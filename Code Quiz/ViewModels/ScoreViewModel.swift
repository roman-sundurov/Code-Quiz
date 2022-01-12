//
//  ScoreViewModel.swift
//  Code Quiz
//
//  Created by Roman on 13.01.2022.
//

import Foundation
 
struct ScoreViewModel {
  let correctGuesses: Int
  let incorrectGuesses: Int
 
  var percentage: Int {
    (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
  }
}
