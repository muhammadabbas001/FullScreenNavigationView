//
//  AppEventsManager.swift
//  FullScreenNavigationView
//
//  Created by Zeeshan Suleman on 01/10/2022.
//

import SwiftUI
import Combine

final public class AppEventsManager {
    static let shared = AppEventsManager()
    /// Present a view over the tab bar
    var navigateFullScreen = PassthroughSubject<(Bool, FullScreenNavigationViewType), Never>()

}
