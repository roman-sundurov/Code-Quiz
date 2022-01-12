//
//  ScoreView.swift
//  Code Quiz
//
//  Created by Roman on 12.01.2022.
//

import SwiftUI
 
struct ScoreView: View {
    
    @EnvironmentObject var viewModel: GameViewModel
    
    var qualityAnswers: (correct: Int, incorrect: Int)
    
    var persentageOfAnswers: Double {
        Double(qualityAnswers.correct / (viewModel.numberOfQuestions / 100))     //.rounded(.toNearestOrAwayFromZero))
    }
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack{
                Spacer()
                Text("Final Score:")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text("\(persentageOfAnswers)")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Spacer()
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(qualityAnswers: (correct: 10, incorrect: 2))
    }
}
