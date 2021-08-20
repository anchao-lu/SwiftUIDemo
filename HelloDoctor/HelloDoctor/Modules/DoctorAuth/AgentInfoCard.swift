//
//  AgentInfoCard.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/15.
//

import SwiftUI

struct AgentInfoCard: View {
    var body: some View {
        HStack {
            Text("我的经纪人：")
                .font(.system(size: 15, weight: .medium))
                .foregroundColor(.FF333333)
            
            Spacer()
            
            Image("scan")
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 20)
        .background(Color.white)
        .cornerRadius(8)
    }
}

struct AgentInfoCard_Previews: PreviewProvider {
    static var previews: some View {
        AgentInfoCard()
    }
}
