//
//  RedView.swift
//  TabbarExample
//
//  Created by Oliver Gepp on 23.01.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import SwiftUI

struct RedView: View {
    var body: some View {
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.all)
            Text("Red")
                .foregroundColor(.white)
                .font(.largeTitle)
        }
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView()
    }
}
