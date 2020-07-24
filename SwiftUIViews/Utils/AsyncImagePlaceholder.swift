//
//  AsyncImagePlaceholder.swift
//  SwiftUIViews
//
//  Created by Vladimir Inozemtsev on 24.07.2020.
//  Copyright © 2020 Vladimir Inozemtsev. All rights reserved.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {

    let style: UIActivityIndicatorView.Style

    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        let indicatorView = UIActivityIndicatorView(style: style)
        indicatorView.startAnimating()
        return indicatorView
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
    }
}

struct AsyncImagePlaceholder: View {
    var body: some View {
        VStack {
            ActivityIndicator(style: .large)
        }.background(Color.gray)
    }
}
