//
//  DetailView.swift
//  NavigationExample
//
//  Created by Oliver Gepp on 28.01.20.
//  Copyright © 2020 fhnw mobile workshop. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    let secretNumber: Int
    
    var body: some View {
        Text("Secret number from master is \(secretNumber)")
            .font(.headline)
        .navigationBarTitle("Detail Page")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(secretNumber: 0)
    }
}
