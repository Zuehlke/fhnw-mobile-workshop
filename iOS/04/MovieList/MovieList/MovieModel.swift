//
//  MovieModel.swift
//  MovieList
//
//  Created by Oliver Gepp on 28.01.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import Foundation

class MovieModel{
    
    var movies = [Movie]()
    
    init() {
        let movie1 = Movie(title: "Ad Astra", imageName: "Movie1")
        let movie2 = Movie(title: "1917", imageName: "Movie2")
        let movie3 = Movie(title: "Bad Boys for Life", imageName: "Movie3")
        let movie4 = Movie(title: "Joker", imageName: "Movie4")
        let movie5 = Movie(title: "Terminator: Dark Fate", imageName: "Movie5")
        let movie6 = Movie(title: "Ip Man 4: The Finale", imageName: "Movie6")
        movies.append(contentsOf: [movie1, movie2, movie3, movie4, movie5, movie6])
    }
}
