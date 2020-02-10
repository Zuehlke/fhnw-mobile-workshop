//
//  MovieRow.swift
//  MoyaExampleSwiftUI
//
//  Created by Oliver Gepp on 04.02.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//
import Kingfisher
import SwiftUI

struct MovieRow: SwiftUI.View {
    
    let movie: Movie
    let viewModel: MovieViewModel
    
    var body: some SwiftUI.View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top
            )) {
                KFImage(movie.fullPosterURL)
                    .cancelOnDisappear(true)
                    .resizable()
                    .frame(height: 250)

                RatingView(rating: self.viewModel.ratingForMovieId(id: movie.id), movieViewModel: viewModel, movieId: movie.id)
                    .padding([.top, .trailing], 20.0)
            }
            Text(movie.title)
                .font(.largeTitle)
                .padding(.all)
                .background(Color(.darkGray)
                    .opacity(0.5))
                .foregroundColor(.white)
        }
    }
}

struct MovieRow_Previews: PreviewProvider {
    static var previews: some SwiftUI.View {
        MovieRow(movie: ExampleDataProvider.movies[0], viewModel: MovieViewModel())
    }
}
