//
//  MainMenus.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/14.
//

import SwiftUI


struct MainMenus: View {
    var body: some View {
        MenusView(spacing: 17, columns: 4)
            .padding(.top, 25)
            .padding(.bottom, 12)
            .background(Color.white)
            .cornerRadius(8)
            .shadow(color: .cardShadow, radius: 20)
    }
}

struct MainMenus_Previews: PreviewProvider {
    static var previews: some View {
        MainMenus()
    }
}
