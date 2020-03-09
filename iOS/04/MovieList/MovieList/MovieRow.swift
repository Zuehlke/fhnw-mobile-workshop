//
//  MovieRow.swift
//  MovieList
//
//  Created by Oliver Gepp on 28.01.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import SwiftUI

struct MovieRow: View {
    
    let movie: Movie
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
            Image(movie.imageName)
                .resizable()
                .frame(height: 250)
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
    static var previews: some View {
        MovieRow(movie: Movie(title: "AdAstra", imageName: "Movie1"))
    }
}
