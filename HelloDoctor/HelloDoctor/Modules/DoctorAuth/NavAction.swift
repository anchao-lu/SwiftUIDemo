//
//  NavAction.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/15.
//

import SwiftUI

struct NavAction: View {
    
    @EnvironmentObject var rootScreen: RootScreenModel
    
    var body: some View {
        VStack {
            VGap(height: 60)
            HStack {
                Spacer()
                Button(action: {
                    rootScreen.screen = .main
                }) {
                    Text("暂不认证")
                        .font(.system(size: 15))
                        .foregroundColor(.mainColor)
                }
            }
        }
    }
}

struct NavAction_Previews: PreviewProvider {
    static var previews: some View {
        NavAction()
    }
}
