//
//  ContentView.swift
//  War Card Game
//
//  Created by Max Victor on 16/02/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    @State var draw = ""
    
    var body: some View {
        ZStack{
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                Image("logo")
                    
                    .padding()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                .padding()
                
                Button{
                    deal()
                }label: {
                    Image("button")
                }

                
                HStack{
                    Spacer()
                    
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom,20)
                        Text(String(playerScore))
                            .font(.largeTitle)
                        
                    }
                    
                    
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom,20)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                        
                    }

                   
                    Spacer()
                }
                .foregroundColor(.white)
                .padding()

                Text(String(draw))
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                
            }
            
        }
    }
    
    
    func deal(){
    //Randonize the player Cards
        var pcarv = Int.random(in: 2...14)
        playerCard = "card" + String(pcarv)
    
    //Randonize the cpu Cards
        var cpucarv = Int.random(in: 2...14)
        cpuCard = "card" + String(cpucarv)
    //Update the score
        
        if pcarv > cpucarv{
            
            playerScore +=  1;
            draw = ""
            
        } else if pcarv < cpucarv {
            
            cpuScore += 1
            draw = ""
            
        }else {
            draw = "Draw"
        }
        
        
        
}}

  


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
