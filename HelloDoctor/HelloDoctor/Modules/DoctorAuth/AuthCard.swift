//
//  AuthCard.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/15.
//

import SwiftUI

struct AuthCard<Content>: View where Content: View {
    
    let headerTitle: String
    let content: Content
    let headerBottom: CGFloat
    
    init(headerTitle: String, headerBottom: CGFloat = 4, @ViewBuilder content: () -> Content) {
        self.headerTitle = headerTitle
        self.headerBottom = headerBottom
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(headerTitle)
                .font(.system(size: 18, weight: .medium))
                .foregroundColor(.FF333333)
                .padding(.top, 20)
                .padding(.bottom, headerBottom)
            content
        }
        .padding(.horizontal, 15)
        .background(Color.white)
        .cornerRadius(8)
    }
}

struct AuthCard_Previews: PreviewProvider {
    static var previews: some View {
        AuthCard(headerTitle: "") {
            Text("123")
        }
    }
}
