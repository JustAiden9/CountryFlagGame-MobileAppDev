//
//  QuestionView.swift
//  Country Flag Game
//
//  Created by Aiden Baker on 1/8/25.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var gameManager: GameManager
    var body: some View {
        if gameManager.playingGame {
            VStack(spacing: 20) {
                HStack {
                    
                    Text("Country Flag Game")
                        .foregroundColor(.yellow)
                        .fontWeight(.heavy)
                    
                    Spacer()
                    
                    Text("\(gameManager.index) out of \(gameManager.questions.count)")
                        .foregroundColor(.yellow)
                    
                }
                ProgressBar(progress: gameManager.progress)
                
                VStack(spacing: 10) {
                    Text("Which country's flag is this?")
                    Image(gameManager.country)
                        .resizable()
                        .frame(width: 300, height: 200)
                    ForEach(gameManager.answerChoices) { answer in
                        AnswerRow(answer: answer)
                            .environmentObject(gameManager)
                    }
                }
                Button {
                    gameManager.goToNextQuestion()
                } label: {
                    CustomButton(text: "Next", background: gameManager.answerSelected ? .yellow : .gray)
                }
                .disabled(!gameManager.answerSelected)

                Spacer()
            }
            .padding()
            .background(.cyan)
        }
    }
}

#Preview {
    QuestionView()
}
