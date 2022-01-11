//
//  ContentView.swift
//  Code Quiz
//
//  Created by Roman on 04.01.2022.
//

import SwiftUI

struct GameView: View {
    
    let question = Question(
            questionText: "What was the first computer bug?",
            possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
            correctAnswerIndex: 2)
    @State var mainColor = GameColor.main

    var body: some View {
        
        ZStack {
            mainColor.ignoresSafeArea()
            VStack{
                
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text(question.questionText)
                    .font(.largeTitle)
                   .bold()
                   .multilineTextAlignment(.leading)
                Spacer()
                
                HStack {
                    ForEach(0..<question.possibleAnswers.count) { answerIndex in
                        Button(action: {
                            print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                            mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                        }, label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        })
                    }
//                    Button(action: {
//                        print("Tapped on Choice 1")
//                    }, label: {
//                        ChoiceTextView(choiceText: question.possibleAnswers[0])
//                    })
//                    Button(action: {
//                        print("Tapped on Choice 2")
//                    }, label: {
//                        ChoiceTextView(choiceText: question.possibleAnswers[1])
//                    })
//                    Button(action: {
//                        print("Tapped on Choice 3")
//                    }, label: {
//                        ChoiceTextView(choiceText: question.possibleAnswers[2])
//                    })
//                    Button(action: {
//                        print("Tapped on Choice 4")
//                    }, label: {
//                        ChoiceTextView(choiceText: question.possibleAnswers[3])
//                    })
//                    Button(action: {
//                        print("Tapped on Choice 4")
//                    }, label: {
//                        ChoiceTextView(choiceText: "wwwwwwwwww")
//                    })
                }
            }
        }
        .foregroundColor(.white)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
.previewInterfaceOrientation(.portrait)
    }
}
