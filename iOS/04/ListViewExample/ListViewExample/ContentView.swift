//
//  ContentView.swift
//  ListViewExample
//
//  Created by Oliver Gepp on 28.01.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var numbers = [Int]()
    
    init() {
        for index in 0...100 {
            numbers.append(index)
        }
    }
    
    var body: some View {
        List{
            ForEach(0..<numbers.count) { i in
                HStack{
                    Spacer()
                    Text("\(self.numbers[i])").font(.largeTitle)
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
