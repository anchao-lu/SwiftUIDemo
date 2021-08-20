//
//  Header.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/13.
//

import SwiftUI

struct LogoTitle: View {
    var body: some View {
        VStack(spacing: 0) {
            VGap(height: 80)
            
            Image("login_logo")
            
            VGap(height: 60)
            
            HStack {
                Text("手机号登录/注册")
                    .foregroundColor(.FF333333)
                    .font(.system(size: 20, weight: .medium))
                
                Spacer()
            }
            .padding(.leading, 48)
            
            VGap(height: 6)
            
            HStack {
                Text("未注册手机验证通过后将自动注册")
                    .foregroundColor(.FFC3C3C3)
                    .font(.system(size: 14))
                
                Spacer()
            }
            .padding(.leading, 48)
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        LogoTitle()
    }
}
