//
//  MenuView.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/14.
//

import SwiftUI

struct MenusView: View {
    let spacing: CGFloat
    let columns: Int
    
    let grideItems: [GridItem] = Array(repeating: .init(.flexible()), count: 4)
    
    var body: some View {
        LazyVGrid(columns: grideItems, spacing: 20) {
            ForEach(0..<columns) { _ in
                VStack(spacing: spacing) {
                    Image("home_menu_test")
                        .overlay(IconBadge(count: 0))
                    
                    Text("图文咨询")
                        .font(.system(size: 14))
                   
                    .foregroundColor(.FF333333)
                }
                .onTapGesture {
                    print("menu 点击")
                }
            }
        }
    }
}

struct IconBadge: View {
    let count: Int
    
    var body: some View {
        HStack(spacing: 0) {
            Text("\(count)")
                .font(.system(size: 10, weight: .medium))
                .foregroundColor(.white)
            Text(" 位等待")
                .font(.system(size: 10))
                .lineLimit(1)
                .foregroundColor(.white)
        }
        .background(
            Image("home_menu_waiting_count_bg")
        )
        // count 大于 0 则显示，否则隐藏
        .opacity(count == 0 ? 0 : 1)
        // icon 高度 46，bg 高度 18
        .offset(x: 23, y: -23-9)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenusView(spacing: 8, columns: 5)
    }
}
