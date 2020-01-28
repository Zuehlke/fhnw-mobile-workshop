//
//  ContentView.swift
//  SegmentedControlExample
//
//  Created by Oliver Gepp on 23.01.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var genre: Genre = .action
    
    var body: some View {
        VStack{
            Picker(selection: $genre, label: Text("Movie Genres:")) {
                Text(Genre.horror.name).tag(Genre.horror)
                Text(Genre.action.name).tag(Genre.action)
                Text(Genre.scienceFiction.name).tag(Genre.scienceFiction)
            }.pickerStyle(SegmentedPickerStyle())
            
            Divider()
            
            Picker(selection: $genre, label: Text("Movie Genres:")) {
                Text(Genre.horror.name).tag(Genre.horror)
                Text(Genre.action.name).tag(Genre.action)
                Text(Genre.scienceFiction.name).tag(Genre.scienceFiction)
            }.pickerStyle(WheelPickerStyle())
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
