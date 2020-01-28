//
//  Movie.swift
//  MovieList
//
//  Created by Oliver Gepp on 28.01.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import Foundation

struct Movie: Identifiable{
    
    let id =  UUID()
    var title: String
    var imageName: String
}
