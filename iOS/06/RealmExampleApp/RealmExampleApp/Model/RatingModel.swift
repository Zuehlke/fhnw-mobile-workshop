//
//  RatingModel.swift
//  RealmExampleApp
//
//  Created by Oliver Gepp on 05.02.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import Foundation
import RealmSwift

class RatingModel{
    
    let realm = try! Realm()
    
    func ratingForMovieId(movieId: Int)->Int{
        
        let result = realm.objects(MovieRating.self).filter("movieId = %@", movieId)
        
        guard let movieRating = result.first else{
            return 0
        }
        return movieRating.rating
    }
    
    func updateRating(movieId: Int, rating: Int){
        try! realm.write {
            realm.create(MovieRating.self, value: ["movieId": movieId, "rating": rating], update: .modified)
        }
    }
    
}
