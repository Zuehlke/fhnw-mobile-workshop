//
//  Genre.swift
//  SegmentedControlExample
//
//  Created by Oliver Gepp on 23.01.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import Foundation


enum Genre: Int, CaseIterable {
    
    case action
    case horror
    case scienceFiction
}

extension Genre{
    
    var id: UUID{
        UUID()
    }
    
    var name: String{
        switch self {
        case .action:
            return "Action"
        case .horror:
            return "Horror"
        case .scienceFiction:
            return "Science Fiction"
        }
    }
}
