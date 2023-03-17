//
//  ContentView.swift
//  Card Wars
//
//  Created by Sarthak Shrivastava on 16/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var cardP = "back"
    @State var cardC = "back"
    
    @State var scorePlayer = 0
    @State var scoreCpu = 0
    
    var body: some View {
        
        ZStack(){
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            
            VStack(){
                Spacer()
                Image("logo")
                Spacer()
                HStack(){
                    Spacer()
                    Image(cardP)
                    Spacer()
                    Image(cardC)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                HStack(){
                    Spacer()
                    VStack(){
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom,10)
                        Text(String(scorePlayer))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack(){
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom,10)
                        Text(String(scoreCpu))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal(){
        //Randomizing
        let playerValue = Int.random(in: 2...14)
        let cpuValue = Int.random(in: 2...14)
        //Assigning to card string
        cardP = "card" + String(playerValue)
        cardC = "card" + String(cpuValue)
        //updating score
        if playerValue > cpuValue{
            scorePlayer+=1
        }
        else if cpuValue > playerValue{
            scoreCpu+=1
        }
        else{
            scoreCpu+=1
            scorePlayer+=1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
