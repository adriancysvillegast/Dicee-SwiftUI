//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Adriancys Jesus Villegas Toro on 29/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftImageDice = 1
    @State var rightImageDice = 1
    
    var body: some View {
        
        //        background
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                
                HStack {
                    DiceView(n: leftImageDice)
                    DiceView(n: rightImageDice)
                }
                .padding(.horizontal)
                Spacer()
                
                Button(action: {
//                    CODE
                    self.leftImageDice = Int.random(in: 1...6)
                    self.rightImageDice = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
//                    add relleno al boton
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
            
            
            
        }
    }
}

struct DiceView: View {
    let n : Int


    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


