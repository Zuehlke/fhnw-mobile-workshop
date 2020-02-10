//
//  ContentView.swift
//  MoyaExampleSwiftUI
//
//  Created by Oliver Gepp on 04.02.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import SwiftUI

struct MovieListView: View {
    
    @ObservedObject var viewModel = MovieViewModel()
    
    var body: some View {
        List{
            ForEach(viewModel.movies) { movie in
                MovieRow(movie: movie, viewModel: self.viewModel)
                    .listRowInsets(EdgeInsets())
            }
        }
    }
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView(viewModel: MovieViewModel(provider: nil, movies: ExampleDataProvider.movies))
    }
}
