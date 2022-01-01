//
//  ContentView.swift
//  Memorize
//
//  Created by Chitralekha Yellewar on 01/01/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: false)
            CardView(isFaceUp: false)
            CardView(isFaceUp: false)
            CardView(isFaceUp: false)
        }
        .foregroundColor(.red)
        .padding(.horizontal)
        
    }
}

//create a card view structure
struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            if isFaceUp {
            RoundedRectangle(cornerRadius: 20)
                .fill()
                .foregroundColor(.white)
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 3)
            Text("✈️")
                .font(.largeTitle)
                .padding()
            } else {
                RoundedRectangle(cornerRadius: 20)
                    .fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
