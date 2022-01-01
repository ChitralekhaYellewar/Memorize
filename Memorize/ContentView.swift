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
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3)
                Text("Hello, world!")
                    .padding()
            }
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3)
                Text("Hello, world!")
                    .padding()
            }
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3)
                Text("Hello, world!")
                    .padding()
            }
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(lineWidth: 3)
                Text("Hello, world!")
                    .padding()
            }
        }
        .foregroundColor(.red)
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
