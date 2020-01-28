//
//  ContentView.swift
//  MovieList
//
//  Created by Oliver Gepp on 28.01.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let movies = MovieModel().movies
    
    var body: some View {
        List{
            ForEach(movies) { movie in
                MovieRow(movie: movie) .listRowInsets(EdgeInsets())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
