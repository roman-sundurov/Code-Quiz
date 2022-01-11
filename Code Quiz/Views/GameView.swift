//
//  ContentView.swift
//  Code Quiz
//
//  Created by Roman on 04.01.2022.
//

import SwiftUI

struct GameView: View {
 
  @StateObject var viewModel = GameViewModel()
 
  var body: some View {
    ZStack {
      GameColor.main.ignoresSafeArea()
      VStack {
        Text(viewModel.questionProgressText)
          .font(.callout)
          .multilineTextAlignment(.leading)
          .padding()
        QuestionView(question: viewModel.currentQuestion)
      }
    }
    .foregroundColor(.white)
    .navigationBarHidden(true)
    .environmentObject(viewModel)
  }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
.previewInterfaceOrientation(.portrait)
    }
}
