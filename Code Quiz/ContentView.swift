//
//  ContentView.swift
//  Code Quiz
//
//  Created by Roman on 04.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            
            ZStack(alignment: .center) {
                Color.blue
                    .frame(width: 250, height: 50, alignment: .center)
                Text("I'm blue!")
                        .font(.title)
                        .foregroundColor(.white)
            }
//            .alignmentGuide(.center, computeValue: CGFloat(0))

                        
            Text("Hello, World! I'm having a great time at Codecademy!")
                .foregroundColor(.blue)
                .bold()
                .multilineTextAlignment(.center)
                .padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20))
            Text("I'm happy!")
               .padding()
               .border(Color.black, width: 1)
            
            HStack(alignment: .center, spacing: 10) {
                Text("Learning to code!")
                    .foregroundColor(.white)
                    .font(Font.custom("Helvetica", size: 20))
                    .padding(10)
                    .background(Color.blue)
                Text("I'm happy")
                    .font(Font.custom("Helvetica", size: 12))
                    .padding(20)
                    .background(Color.gray)
            }
            
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
                VStack {}
                    .frame(width: 200, height: 200)
                    .background(Color.blue)
                VStack {}
                    .frame(width: 100, height: 100)
                    .background(Color.yellow)
            }
            .font(.title)
            .foregroundColor(.green)
            .border(Color.black)

            
            VStack {
                Text("Welcome to Code History!")
                    .font(.title)
                    .padding()
                Button(action: {
                    print("Clicked")
                }, label: {
                    Text("Click me")
                })
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                
            Spacer()
                    .frame(height: 10)
            }


        }
        .border(Color.black, width: 1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
