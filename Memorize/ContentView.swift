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
            Spacer()
            HStack {
                remove
                Spacer()
                add
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
        .foregroundColor(.red)
        .padding(.horizontal)
    }
    
    // seperate view for remove button
    var remove: some View {
        Button {
            if emojisCount > 1 {
                emojisCount -= 1
            }
        } label: {
            VStack {
                Image(systemName: "minus.circle")
            }
        }
    }
    
    // seperate view for add button
    var add: some View {
        Button {
            if emojisCount < emojis.count {
                emojisCount += 1
            }
        } label: {
            VStack {
                Image(systemName: "plus.circle")
            }
        }
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
