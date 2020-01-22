//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Oliver Gepp on 22.01.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var name: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    Text("What is your name?")
                    TextField("Name's placeholder", text: $name)
                }
                if name.count > 0{
                     Text("Hello \(name). How are you?")
                }
            }
            .navigationBarTitle("Hello World")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
