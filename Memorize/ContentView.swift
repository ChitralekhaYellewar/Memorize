//
//  ContentView.swift
//  Memorize
//
//  Created by Chitralekha Yellewar on 01/01/22.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🚗","🚙","🚲","🛵",
                  "✈️","🚀","🛸","🚁",
                  "⛵️","🛳","🚢","🛶",
                  "🚖","🚔","🚍","🚂",
                  "🚡","🚠","🚟","🚋",
                  "🛴","🏍","🛺","🚜"]
    @State var emojisCount = 4
    
    var body: some View {
        VStack {
            HStack {
                ForEach(emojis[0..<emojisCount], id: \.self) { emoji in
                    CardView(content: emoji)
                }
            }
            HStack {
                Button(action: {
                    emojisCount += 1
                }, label: {
                    VStack {
                        Text("Add")
                        Text("Card")
                    }
                })
                Spacer()
                Button(action: {
                    emojisCount += 1
                }, label: {
                    VStack {
                        Text("Add")
                        Text("Card")
                    }
                })
            }
            .padding(.horizontal)
        }
        .foregroundColor(.red)
        .padding(.horizontal)
    }
    
}

//create a card view structure
struct CardView: View {
    @State var isFaceUp: Bool = false
    var content: String
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20) //local variable for repeating code.
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text(content).font(.largeTitle).padding()
            } else {
                shape.fill()
            }
        }.onTapGesture {
            isFaceUp = !isFaceUp
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
