//
//  DetailScene.swift
//  Shoes-App
//
//  Created by Nico Molina on 16/11/2024.
//

import Foundation
import SwiftUI

struct DetailScene : View {
    
    @ObservedObject var viewModel: DetailViewModel
    
    var body: some View {
        NavigationView {
            if case let .loaded(loadedState) = viewModel.state {
                loadedView(state: loadedState)
            } else {
                loadingView()
            }
        }.onAppear {
            viewModel.send(.viewAppeared)
        }
    }
}

private extension DetailScene {
    
    func loadingView() -> some View {
        ProgressView()
    }
    
    func loadedView(state: DetailViewModel.LoadedState) -> some View {
        VStack {
            DetailContent()
        }
    }
}

#Preview {
    DetailScene(viewModel: DetailViewModel())
}
