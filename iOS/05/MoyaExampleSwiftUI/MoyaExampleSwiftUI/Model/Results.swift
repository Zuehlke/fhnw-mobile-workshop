//
//  Results.swift
//  MoyaExampleSwiftUI
//
//  Created by Oliver Gepp on 04.02.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import Foundation

//generated with https://app.quicktype.io/

 struct Results: Codable {
     let page, totalResults, totalPages: Int
     let movies: [Movie]

     enum CodingKeys: String, CodingKey {
         case page
         case totalResults = "total_results"
         case totalPages = "total_pages"
         case movies = "results"
     }
 }
