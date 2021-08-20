//
//  ProfileTopView.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/14.
//

import SwiftUI

struct ProfileTopView: View {
    var body: some View {
        VStack(spacing: 22) {
            VGap(height: 42)
            ProfileNavBarView()
            MyAmountView()
        }
        .background(
            GeometryReader { proxy in
                
                Image("profile_top_bg")
                    .resizable()
                    .frame(width: proxy.size.width, height: 174 / 375 * proxy.size.width)
                    .ignoresSafeArea()
            }
        )
    }
}

struct AmountView: View {
    let amount: Double
    let typeName: String
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(.init(format: "%.2f", amount))")
                .font(.system(size: 24, weight: .medium))
                .foregroundColor(.mainColor)
            Text(typeName)
                .font(.system(size: 14))
                .foregroundColor(.FF333333)
                +
                Text("（元）")
                .font(.system(size: 12))
                .foregroundColor(.FF333333)
        }
    }
}


struct ProfileTopView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileTopView()
    }
}

struct ProfileNavBarView: View {
    var body: some View {
        HStack(spacing: 14) {
            Image("doctor_default_avatar")
            Text("黄建苹")
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(.white)
            Spacer()
            Image("profile_settings")
        }
        .padding(.horizontal, 15)
    }
}

struct MyAmountView: View {
    var body: some View {
        VStack {
            HStack {
                Text("我的收入")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundColor(.FF333333)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.FF666666)
                    .frame(width: 8, height: 16)
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 15)
            
            VGap(height: 7)
            
            HStack {
                Spacer()
                AmountView(amount: 1000, typeName: "本月预估收入")
                Spacer()
                AmountView(amount: 5000, typeName: "累计收入")
                Spacer()
            }
            .padding(.bottom, 12)
        }
        .background(Color.white)
        .cornerRadius(8)
        .shadow(color: .cardShadow, radius: 20)
        .padding(.horizontal, 15)
    }
}
