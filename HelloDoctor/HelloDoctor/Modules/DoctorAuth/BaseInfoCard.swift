//
//  BaseInfoCard.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/15.
//

import SwiftUI

struct BaseInfoCard: View {
    @State private var name = ""
    
    var body: some View {
        AuthCard(headerTitle: "基本信息", headerBottom: 11) {
            AuthCardRow(typeName: "头像", rowType: .avatar, verticalPadding: 7)
            AuthCardRow(typeName: "姓名", rowType: .field, hintText: "点击输入姓名")
            AuthCardRow(typeName: "身份证", rowType: .field, hintText: "点击输入身份证")
            AuthCardRow(typeName: "个人简介")
            AuthCardRow(typeName: "擅长", showBorder: false)
        }
    }
}

struct BaseInfoCard_Previews: PreviewProvider {
    static var previews: some View {
        BaseInfoCard()
    }
}
