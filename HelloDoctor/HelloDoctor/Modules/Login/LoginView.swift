//
//  LoginView.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/12.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var screenModel: RootScreenModel
    @State private var phone = ""
    @State private var code = ""
    
    var body: some View {
        
        VStack(spacing: 0) {
            ScrollView(showsIndicators: false) {
                LogoTitle()
                
                FieldView(phone: $phone, code: $code)
                
                LoginActions() { success in
                    withAnimation {
                        screenModel.screen = .main
                    }
                }
                
                ThirdLogin()
            }
            
            Spacer()
            
            PrivacyView() { isChecked in
                print(isChecked)
            }
        }
        // 忽略 safeArea 底部，可以使 PrivacyView 固定在底部，不会随键盘的弹出而上浮
        .ignoresSafeArea(edges: .bottom)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
