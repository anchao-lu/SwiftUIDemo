//
//  HomeView.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/13.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 0) {
                HomeTopView()
                MenusSectionView(title: "患者服务", menusLength: 3)
                MenusSectionView(title: "常用工具", menusLength: 5)
                    .padding(.bottom, 30)
            }
        }
        .navigationBarHidden(true)
        .ignoresSafeArea(edges: .top)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

