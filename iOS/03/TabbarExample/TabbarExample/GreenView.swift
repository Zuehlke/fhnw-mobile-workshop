//
//  GreenView.swift
//  TabbarExample
//
//  Created by Oliver Gepp on 23.01.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import SwiftUI

struct GreenView: View {
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            Text("Green")
                .foregroundColor(.white)
                .font(.largeTitle)
        }
    }
}

struct GreenView_Previews: PreviewProvider {
    static var previews: some View {
        GreenView()
    }
}
