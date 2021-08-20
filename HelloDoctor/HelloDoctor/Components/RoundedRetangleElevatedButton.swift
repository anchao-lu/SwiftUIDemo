//
//  RoundedRetangleElevatedButton.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/13.
//

import SwiftUI

/// 默认：这是一个无限宽度的按钮
/// 如果需要一个有限宽度的按钮，请设置 isInfinity 为 false，同时设置 horizontalPadding
struct RoundedRetangleElevatedButton: View {
    let title: String
    var isInfinity = true
    var titleSize: CGFloat = 16
    var verticalPadding: CGFloat = 9
    var horizontalPadding: CGFloat?
    let onTap: () -> Void
    
    var body: some View {
        Button(action: onTap) {
            HStack {
                if isInfinity { Spacer() }
                Text(title)
                    .foregroundColor(.white)
                    .font(.system(size: titleSize))
                if isInfinity { Spacer() }
            }
            .padding(.vertical, verticalPadding)
            .padding(.horizontal, horizontalPadding)
            .background(Color.mainColor)
        }
        .buttonStyle(PlainButtonStyle())
        .clipShape(Capsule())
    }
}
