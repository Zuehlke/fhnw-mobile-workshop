//
//  ContentView.swift
//  TabbarExample
//
//  Created by Oliver Gepp on 23.01.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            RedView()
                .tabItem{
                    Image(systemName: "list.dash")
                    Text("Red")
            }
            GreenView()
                .tabItem{
                    Image(systemName: "tortoise")
                    Text("Green")
            }
            BlueView()
                .tabItem{
                    Image(systemName: "tornado")
                    Text("Blue")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
