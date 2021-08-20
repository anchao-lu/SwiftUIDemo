//
//  AuthCardRow.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/15.
//

import SwiftUI

struct AuthCardRow: View {
    
    let typeName: String
    var showBorder = true
    var rowType: RowType = .normal
    var verticalPadding: CGFloat = 16
    var hintText: String?
    @State private var text = ""
    
    enum RowType {
        case normal
        case avatar
        case field
    }
    
    var body: some View {
        HStack {
            Text(typeName)
                .font(.system(size: 15))
                .foregroundColor(.FF333333)
            if rowType == .avatar {
                Text("请上传个人头像")
                    .font(.system(size: 13))
                    .foregroundColor(.FF999999)
                
                Spacer()
                Image("doctor_default_avatar")
                    .resizable()
                    .frame(width: 38, height: 38)
            }
            if rowType == .field {
                TextField(hintText!, text: $text)
                    .foregroundColor(text.isEmpty ? .FFC3C3C3 : .FF333333)
                    .font(.system(size: 14))
                    .lineLimit(1)
                    .multilineTextAlignment(.trailing)
            }
            if rowType != .field {
                if rowType != .avatar {
                    Spacer()
                }
                NavArrowRightView()
            }
        }
        .padding(.vertical, verticalPadding)
        .edgeBorder(borderHeight: showBorder ? 1 : 0, edge: .bottom)
    }
}

struct AuthCardRow_Previews: PreviewProvider {
    static var previews: some View {
        AuthCardRow(typeName: "")
    }
}
