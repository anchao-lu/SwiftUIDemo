//
//  ThirdLogin.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/13.
//

import SwiftUI

struct ThirdLogin: View {
    var body: some View {
        VStack(spacing: 0) {
            
            VGap(height: 31)
            HeaderView()
            VGap(height: 27)
            HStack(spacing: 0) {
                Spacer()
                Button(action: {}) {
                    Image("login_wx")
                }
                Spacer()
                    .frame(width: 67)
                Button(action: {}) {
                    Image("login_apple")
                }
                Spacer()
            }
            VGap(height: 31)
        }
    }
}

struct HeaderView: View {
    var body: some View {
        HStack(spacing: 0) {
            Spacer()
                .frame(height: 1)
                .background(Color.FF999999)
            Circle()
                .frame(width: 3, height: 3)
                .foregroundColor(.FF666666)
            
            Text("其它方式登录")
                .font(.system(size: 12))
                .foregroundColor(.FF999999)
                .padding(.horizontal, 10)
            
            Circle()
                .frame(width: 3, height: 3)
                .foregroundColor(.FF666666)
            Spacer()
                .frame(height: 1)
                .background(Color.FF999999)
        }
        .padding(.horizontal, 15)
    }
}
