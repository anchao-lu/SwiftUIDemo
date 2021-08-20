//
//  AuthView.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/15.
//

import SwiftUI

struct AuthView: View {
    
    var body: some View {
        VStack {
            NavAction()
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20) {
                    Text("身份认证")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(.FF333333)
                    BaseInfoCard()
                    DeptInfoCard()
                    CredentialInfoCard()
                    AgentInfoCard()
                    RoundedRetangleElevatedButton(title: "提交审核", verticalPadding: 12.5) {
                    }
                    .padding(.vertical, 45)
                }
            }
            .padding(.bottom, 20)
        }
        .padding(.horizontal, 15)
        .navigationBarHidden(true)
        .background(Color.FFF5F7FF)
        .ignoresSafeArea()
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
