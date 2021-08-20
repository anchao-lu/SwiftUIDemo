//
//  Profile.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/13.
//

import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject var rootScreenModel: RootScreenModel
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            VStack {
                ProfileTopView()
                
                VGap(height: 10)
                ProfileRowsView()
                RoundedRetangleElevatedButton(
                    title: "退出登录",
                    isInfinity: false,
                    verticalPadding: 9,
                    horizontalPadding: 20
                ) {
                    withAnimation {
                        rootScreenModel.screen = .login
                    }
                }
            }
        }
        .padding(.bottom, 30)
        .navigationBarHidden(true)
        .ignoresSafeArea(edges: .top)
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
