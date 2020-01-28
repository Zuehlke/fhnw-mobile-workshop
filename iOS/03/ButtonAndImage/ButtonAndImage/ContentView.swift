//
//  ContentView.swift
//  ButtonAndImage
//
//  Created by Oliver Gepp on 28.01.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var showGhost = false
    
    var text: String{
        showGhost ? "Hide" : "Call a ghost"
    }
    
    var body: some View {
        VStack {
            Button(action: {
                self.showGhost.toggle()
            }) {
                Text(text)
                    .padding(.horizontal)
                    .frame(height: 40.0)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .font(.title)
                    .cornerRadius(10)
            }
            
            if showGhost{
                Image("ghost")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
