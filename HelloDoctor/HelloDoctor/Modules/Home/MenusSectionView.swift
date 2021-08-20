//
//  OtherMenus.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/14.
//

import SwiftUI

struct MenusSectionView: View {
    let title: String
    let menusLength: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(title)
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.FF333333)
                .padding(.horizontal, 15)
                .padding(.vertical, 20)
            MenusView(spacing: 8, columns: menusLength)
        }
    }
}

struct OtherMenus_Previews: PreviewProvider {
    static var previews: some View {
        MenusSectionView(title: "患者服务", menusLength: 9)
    }
}
