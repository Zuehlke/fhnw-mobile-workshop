//
//  Rating.swift
//  RealmExampleApp
//
//  Created by Oliver Gepp on 05.02.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import Foundation
import RealmSwift

class MovieRating: Object{
    
    @objc dynamic var movieId: Int = 0
    @objc dynamic var rating:  Int = 0
    
    override class func primaryKey() -> String? {
        return "movieId"
    }
    
}
