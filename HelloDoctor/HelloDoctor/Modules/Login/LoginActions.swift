//
//  LoginActions.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/13.
//

import SwiftUI

struct LoginActions: View {
    
    let loginResult: (Bool) -> Void
    
    var body: some View {
        
        VStack {
            VGap(height: 48)
            RoundedRetangleElevatedButton(
                title: "登录/注册"
            ) {
                DispatchQueue.main.async {
                    loginResult(true)
                }
            }
            VGap(height: 20)
            RoundedRetangleOutlineButton(title: "本机号码一键登录") {
                print("本机号码一键登录")
            }
        }
        .padding(.horizontal, 45)
    }
}
