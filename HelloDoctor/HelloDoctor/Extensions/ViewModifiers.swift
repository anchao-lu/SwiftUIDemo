//
//  ViewModifiers.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/12.
//

import SwiftUI

extension View {
    /// borderHeight, borderWidth 二选一
    func edgeBorder(borderHeight: CGFloat? = nil, borderWidth: CGFloat? = nil, edge: Alignment, color: Color = Color.dividerLine) -> some View {
        modifier(
            EdgeBorder(
                borderHeight: borderHeight,
                borderWidth: borderWidth,
                edge: edge,
                color: color
            )
        )
    }
    
    /// 自定义全局返回按钮：隐藏原导航返回按钮，采用自定义的导航返回按钮
    func customNavBack() -> some View {
        modifier(CustomNavBack())
    }
}

struct EdgeBorder: ViewModifier {
    
    let borderHeight: CGFloat?
    let borderWidth: CGFloat?
    let edge: Alignment
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .overlay(
                Rectangle()
                    .fill(color)
                    .frame(width: borderWidth, height: borderHeight, alignment: edge)
                ,
                alignment: edge
            )
    }
}

struct CustomNavBack: ViewModifier {
    @Environment(\.presentationMode) var presentationMode
    
    func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(
                leading: Button(
                    action: {
                        presentationMode.wrappedValue.dismiss()
                    }
                )
                {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.FF666666)
                }
                
                .frame(width: 44, height: 44)
            )
    }
}
