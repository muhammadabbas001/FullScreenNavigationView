//
//  HomeView.swift
//  FullScreenNavigationView
//
//  Created by Zeeshan Suleman on 01/10/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 20){
            Spacer()
            
            Text("Home View!")
            
            Button{
                AppEventsManager.shared.navigateFullScreen.send((true, FullScreenNavigationViewType.secondView))
            } label: {
                Text("FullScreen Navigate to SecondView")
            }
            
            Button{
                AppEventsManager.shared.navigateFullScreen.send((true, FullScreenNavigationViewType.thirdView(true)))
            } label: {
                Text("FullScreen Navigate to ThirdView")
            }
            
            Spacer()
        }
    }
}
