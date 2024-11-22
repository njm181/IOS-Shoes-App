//
//  DetailViewModel.swift
//  Shoes-App
//
//  Created by Nico Molina on 20/11/2024.
//

import Foundation

final class DetailViewModel: ObservableObject {
    
    enum Event {
        case viewAppeared
        case userTapped(String)
    }
    
    enum State: Equatable {
        case loading
        case loaded(LoadedState)
    }
    
    struct LoadedState: Equatable {
            let users: [String]
    }
    
    @Published private(set) var state: State
    
    init(state: State = .loading) {
        self.state = state
    }
    
    func send(_ event: Event) {
        switch event {
        case .viewAppeared:
            loadData()
        case .userTapped(let string):
            userTapped(string)
        }
    }
}

private extension DetailViewModel {
    
    func loadData(){
        Task { @MainActor in
            //let data = await useCase.fetchData
            let data = ["data 1","data 2"]
            state = .loaded(LoadedState(users: data))
        }
    }
    
    func userTapped(_ user: String){
        //useCase.callUser(user)
    }
}
