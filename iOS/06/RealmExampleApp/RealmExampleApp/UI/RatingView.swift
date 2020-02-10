//
//  RatingView.swift
//  RealmExampleApp
//
//  Created by Oliver Gepp on 05.02.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import SwiftUI

struct RatingView: View {
    
    @State var rating: Int
    var movieViewModel: MovieViewModel
    var movieId: Int
    var maximumRating = 5
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    var offColor = Color.gray
    var onColor = Color.yellow
    
    
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
    
    var body: some View {
        HStack {
            ForEach(1..<maximumRating + 1) { newRating in
                self.image(for: self.rating)
                    .foregroundColor(newRating > self.rating ? self.offColor : self.onColor)
                    .onTapGesture {
                        self.rating = newRating
                        self.movieViewModel.updateRating(movieId: self.movieId, rating: newRating)
                }
            }
        }
    }
    
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: 3, movieViewModel: MovieViewModel(), movieId: 0)
    }
}
