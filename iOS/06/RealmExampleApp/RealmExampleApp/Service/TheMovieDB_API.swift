//
//  TheMovieDB_API.swift
//  MoyaExampleSwiftUI
//
//  Created by Oliver Gepp on 04.02.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import Foundation
import Moya

enum TheMovieDB_Api {
    case recommended(id:Int)
    case popular(page:Int)
    case newMovies(page:Int)
    case video(id:Int)
    case actor(ids:[Int])
}

extension TheMovieDB_Api: TargetType {
    
    #warning("insert your MOVIE-DB-API-KEY here")
    private static let APIKey = "TODO"
    
    var baseURL: URL {
        guard let url = URL(string: "https://api.themoviedb.org/3/") else {
            fatalError("baseURL could not be configured.")}
        return url
    }
    
    var path: String {
        switch self {
        case .recommended(let id):
            return "movie/\(id)/recommendations"
        case .popular:
            return "movie/popular"
        case .newMovies:
            return "movie/now_playing"
        case .video(let id):
            return "movie/\(id)/videos"
        case .actor:
            return "discover/movie"
        }
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case .recommended, .video:
            return .requestParameters(parameters: ["api_key":  TheMovieDB_Api.APIKey], encoding: URLEncoding.queryString)
        case .popular(let page), .newMovies(let page):
            return .requestParameters(parameters: ["page":page, "api_key": TheMovieDB_Api.APIKey], encoding: URLEncoding.queryString)
        case .actor(let ids):
            let params = ids.map({"\($0)"}).joined(separator: ",")
            return .requestParameters(parameters: ["api_key": TheMovieDB_Api.APIKey, "with_people": params], encoding: URLEncoding.queryString)
        }
    }
    
    var headers: [String : String]? {
        return ["Content-type": "application/json"]
    }
    
}
