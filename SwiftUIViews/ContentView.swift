//
//  ContentView.swift
//  SwiftUIViews
//
//  Created by Vladimir Inozemtsev on 23.07.2020.
//  Copyright © 2020 Vladimir Inozemtsev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let tutors: [Tutor]
    
    var body: some View {
        List(tutors) {
            Cell(tutor: $0)
        }
    }
}

struct Cell: View {
    
    let tutor: Tutor
    
    var body: some View {
        HStack {
            Image(tutor.imageName)
                .cornerRadius(40)
            VStack(alignment: .leading, spacing: 4) {
                Text(tutor.name)
                    .font(.headline)
                Text(tutor.headline)
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tutors: testData)
    }
}
