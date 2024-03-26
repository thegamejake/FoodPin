//
//  MainView.swift
//  FoodPin
//
//  Created by 勞裕聲 on 2024/3/26.
//

import SwiftUI

struct MainView: View {
    
    @State private var selectedTabIndex = 0
    
    var body: some View {
        TabView(selection: $selectedTabIndex) {
            RestaurantListView()
                .tabItem {
                    Label("餐廳列表", systemImage: "tag.fill")
                }
                .tag(0)
            
            Text("發現新大陸")
                .tabItem {
                    Label("發現", systemImage: "wand.and.rays")
                }
                .tag(1)
            
            Text("關於我，個人網站、社交網路等等⋯⋯")
                .tabItem {
                    Label("關於我", systemImage: "square.stack")
                }
                .tag(2)
        }
        .accentColor(Color("NavigationBarTitle"))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
