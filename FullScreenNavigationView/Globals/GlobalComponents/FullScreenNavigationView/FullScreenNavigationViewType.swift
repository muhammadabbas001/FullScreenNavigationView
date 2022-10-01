//
//  FullScreenNavigationViewType.swift
//  FullScreenNavigationView
//
//  Created by Zeeshan Suleman on 01/10/2022.
//

import SwiftUI

/// Enum for any views that need to be displayed full screen from MainTabbedView.
enum FullScreenNavigationViewType {
    
    case empty
    case secondView
    case thirdView(Bool)
    
    var view: AnyView {
        switch self {
        case .empty:
            return AnyView(EmptyView())
        case .secondView:
            return AnyView(SecondView())
        case .thirdView(isThirdView: let isThirdView):
            return AnyView(ThirdView(isThirdView: isThirdView))
        }
    }
}
