//
//  MovieModel.swift
//  MoyaExampleSwiftUI
//
//  Created by Oliver Gepp on 04.02.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import Foundation
import SwiftUI

class MovieViewModel: ObservableObject{
    
    private let provider: NetworkManager?
    private let ratingModel = RatingModel()
    
    @Published var movies = [Movie]()
    
    init(provider: NetworkManager? = NetworkManager(), movies: [Movie] = []) {
        self.provider = provider
        self.movies = movies
        loadNewMovies()
    }
    
    func loadNewMovies(){
         provider?.getNewMovies(page: 1) {[weak self] movies in
                   print("\(movies.count) new movies loaded")
                   self?.movies.removeAll()
            self?.movies.append(contentsOf: movies)}
    }
    
    func ratingForMovieId(id: Int)->Int{
        return ratingModel.ratingForMovieId(movieId: id)
    }
    
    func updateRating(movieId: Int, rating: Int){
        ratingModel.updateRating(movieId: movieId, rating: rating)
    }
}
