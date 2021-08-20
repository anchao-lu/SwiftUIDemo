//
//  CredentialCard.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/15.
//

import SwiftUI

struct CredentialInfoCard: View {
    var body: some View {
        AuthCard(headerTitle: "证书照片") {
            HStack(spacing: 30) {
                Spacer()
                VStack(spacing: 14) {
                    Image("camera")
                        .padding(.horizontal, 42)
                        .padding(.vertical, 57)
                        .background(Color.FFF7F8F9)
                        .cornerRadius(8)
                    Text("执业证书")
                        .font(.system(size: 14))
                        .foregroundColor(.FF333333)
                }
                
                VStack(spacing: 14) {
                    Image("camera")
                        .padding(.horizontal, 42)
                        .padding(.vertical, 57)
                        .background(Color.FFF7F8F9)
                        .cornerRadius(8)
                    Text("资格证书")
                        .font(.system(size: 14))
                        .foregroundColor(.FF333333)
                }
                
                Spacer()
            }
            .padding(.vertical, 20)
        }
    }
}

struct CredentialCard_Previews: PreviewProvider {
    static var previews: some View {
        CredentialInfoCard()
    }
}
