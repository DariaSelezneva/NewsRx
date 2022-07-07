//
//  AppState.swift
//  NewsRx
//
//  Created by dunice on 07.07.2022.
//

import Foundation

enum LoadingState {
    case idle
    case loading
    case success
    case error(String)
}

class AppState {
    var loadingState: LoadingState = .idle
}
