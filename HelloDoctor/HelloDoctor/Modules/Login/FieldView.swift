//
//  FieldView.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/13.
//

import SwiftUI

struct FieldView: View {
    @Binding var phone: String
    @Binding var code: String
    
    var body: some View {
        VGap(height: 43)
        
        PhoneInputView(phone: $phone)
        
        VGap(height: 29)
        
        CodeInputView(code: $code)
    }
}


struct PhoneInputView: View {
    
    @Binding var phone: String
    
    var body: some View {
        HStack(spacing: 8) {
            Image("login_phone")
            
            HStack(spacing: 0) {
                Text("+ 86")
                    .foregroundColor(.FF333333)
                    .font(.system(size: 14))
                
                Spacer()
                    .frame(width: 1, height: 24)
                    .background(Color.gray)
                    .padding(.leading, 8)
                    .padding(.trailing, 10)
                
                TextField("请输入手机号码", text: $phone)
                    .foregroundColor(phone.isEmpty ? .FFC3C3C3 : .FF333333)
                    .font(.system(size: 14))
            }
            .padding(.vertical, 2)
            .edgeBorder(borderHeight: 1, edge: .bottom, color: .FFB9B9B9)
        }
        .padding(.horizontal, 54)
    }
}


struct CodeInputView: View {
    @Binding var code: String
    
    var body: some View {
        HStack(spacing: 8) {
            Image("login_code")
            
            TextField("请输入验证码", text: $code)
                .foregroundColor(code.isEmpty ? .FFC3C3C3 : .FF333333)
                .font(.system(size: 14))
                .padding([.bottom, .leading], 4)
                .edgeBorder(borderHeight: 1, edge: .bottom, color: .FFB9B9B9)
            
            RoundedRetangleElevatedButton(
                title: "获取验证码",
                isInfinity: false,
                titleSize: 13,
                verticalPadding: 5,
                horizontalPadding: 11
            ) {
                
            }
        }
        .padding(.horizontal, 54)
        .padding(.vertical, 4)
    }
}
