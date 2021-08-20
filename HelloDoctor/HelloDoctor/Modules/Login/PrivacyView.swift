//
//  PrivacyView.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/13.
//

import SwiftUI

struct PrivacyView: View {
    
    @State private var didCheckPrivacy = false
    let onPrivacyCheckTap: (_ isChecked: Bool) -> Void
    
    var body: some View {
        
        HStack(alignment: .top) {
            
            Button(action: {
                didCheckPrivacy.toggle()
                onPrivacyCheckTap(didCheckPrivacy)
            }) {
                
                didCheckPrivacy ?
                    Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.mainColor) :
                    Image(systemName: "circle")
                    .foregroundColor(.FF666666)
            }
            
            Text("您已阅读并同意")
                .foregroundColor(.FF666666)
                .font(.system(size: 13))
                +
                Text("《Hello 医生用户协议》")
                .foregroundColor(.mainColor)
                .font(.system(size: 13))
                +
                Text("以及")
                .foregroundColor(.FF666666)
                .font(.system(size: 13))
                +
                Text("《Hello 医生隐私政策》")
                .foregroundColor(.mainColor)
                .font(.system(size: 13))
            
        }
        .padding(.bottom, 30)
    }
}
