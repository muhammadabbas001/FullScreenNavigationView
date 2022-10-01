//
//  SetReactiveMethods.swift
//  FullScreenNavigationView
//
//  Created by Zeeshan Suleman on 01/10/2022.
//

import SwiftUI
import Combine

/// This class will house all of the root background reactive subscribers. They will all go in the initializer so while initialized, the subscribers will always be listening for changes. This is to be declared in 'MainTabbedView' as [private let currentReactives = SetReactiveMethods()]
class SetReactiveMethods: ObservableObject {
    
    // Full screen navigation
    @Published var presentFullScreenView = false
    var viewToShow = FullScreenNavigationViewType.empty

    private var cancellable = Set<AnyCancellable>()
     
    init() {
        subscriberForFullScreen()
    }
    
    /// Full screen navigation to cover tab bar
    private func subscriberForFullScreen() {
        AppEventsManager.shared.navigateFullScreen
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: { [weak self] (show, anyView) in
                guard let strongSelf = self else { return }
                strongSelf.viewToShow = anyView
                strongSelf.presentFullScreenView = show
            })
            .store(in: &cancellable)
    }
    
}
