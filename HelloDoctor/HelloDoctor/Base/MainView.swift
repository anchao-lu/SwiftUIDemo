//
//  MainView.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/12.
//

import SwiftUI

struct MainView: View {
    
    // 与 TabView 的 selection 绑定
    // selection 指向 tabItem 的 tag
    @State private var tabSelectionTag = 0
    
    var body: some View {
        
        NavigationView {
            TabView(selection: $tabSelectionTag) {
                HomeView()
                    .tabItem {
                        Label(
                            "首页",
                            image: tabSelectionTag == 0 ?
                                "tab_home_selected" :
                                "tab_home"
                        )
                    }
                    .tag(0)
                
                ChatView()
                    .tabItem {
                        Label(
                            "问诊消息",
                            image: tabSelectionTag == 1 ?
                                "tab_chat_selected":
                                "tab_chat"
                        )
                    }
                    .tag(1)
                
                ProfileView()
                    .tabItem {
                        Label(
                            "我的",
                            image:tabSelectionTag == 2 ?
                                "tab_profile_selected" :
                                "tab_profile"
                        )
                    }
                    .tag(2)
            }
            .accentColor(.mainColor)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
