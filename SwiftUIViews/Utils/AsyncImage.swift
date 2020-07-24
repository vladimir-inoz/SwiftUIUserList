//
//  AsyncImage.swift
//  SwiftUIViews
//
//  Created by Vladimir Inozemtsev on 24.07.2020.
//  Copyright © 2020 Vladimir Inozemtsev. All rights reserved.
//

import SwiftUI

struct AsyncImage<Placeholder: View>: View {
    
    @ObservedObject private var loader: ImageLoader
    private let placeholder: Placeholder?
    
    init(url: URL, placeholder: Placeholder? = nil) {
        loader = ImageLoader(url: url)
        self.placeholder = placeholder
    }
    
    var body: some View {
        image
            .onAppear(perform: loader.load)
            .onDisappear(perform: loader.cancel)
    }
    
    @ViewBuilder private var image: some View {
        Group {
            makeImage()
        }
    }
    
    @ViewBuilder private func makeImage() -> some View {
        if let image = loader.image {
            Image(uiImage: image)
            .resizable()
        } else {
            placeholder
        }
    }
}
