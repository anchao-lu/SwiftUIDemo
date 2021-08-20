//
//  HomeTopView.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/14.
//

import SwiftUI

struct HomeTopView: View {
    var body: some View {
        VStack(spacing: 0) {
            VGap(height: 32)
            HomeNavBarView()
            VGap(height: 16)
            DoctorInfoView()
            VGap(height: 40)
            MainMenus()
        }
        .padding(.horizontal, 15)
        .background(
            GeometryReader { proxy in
                Image("home_top_bg")
                    .resizable()
                    .frame(width: proxy.size.width, height: 254 / 375 * proxy.size.width)
            }
        )
    }
}

struct HomeNavBarView: View {
    var body: some View {
        HStack {
            Text("我的工作室")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.white)
            
            Spacer()
            
            Button(action: {}){
                
                Image("home_customer_service")
            }
            .padding(.vertical, 12)
        }
    }
}

struct HomeTopView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTopView()
    }
}
