//
//  SplashView.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/12.
//

import SwiftUI

struct SplashView: View {
    
    @EnvironmentObject var rootScreenModel: RootScreenModel
    
    var body: some View {
        ZStack {
            Color(.white)
            
            VStack {
                Image("splash_doctor")
                    .padding(.top, 99)
                
                Spacer()
                
                Image("splash_logo")
                    .padding(.bottom, 55)
            }
            
            ProgressView()
        }
        .ignoresSafeArea()
        .onAppear {
            DispatchQueue.main.async {
                withAnimation {
                    rootScreenModel.screen = .auth
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
