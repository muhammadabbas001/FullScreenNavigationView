//
//  SecondView.swift
//  FullScreenNavigationView
//
//  Created by Zeeshan Suleman on 01/10/2022.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack(spacing: 20){
            Spacer()
            Text("Second View!")
            NavigationLink {
                ThirdView(isThirdView: true)
            } label: {
                Text("Navigate to ThirdView")
            }
            Button {
                AppEventsManager.shared.navigateFullScreen.send((false, .empty))
            } label: {
                Text("Back")
            }
            Spacer()
        }
    }
}
