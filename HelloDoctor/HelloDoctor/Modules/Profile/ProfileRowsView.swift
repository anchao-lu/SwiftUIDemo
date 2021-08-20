//
//  ProfileRowsView.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/14.
//

import SwiftUI

struct ProfileRowModel: Identifiable {
    let id = UUID()
    let imgSrc: String
    let title: String
    
    var destination: some View {
        switch title {
        case "我的评价":
            return MyEvalutionView()
        case "我的笔记":
            return MyEvalutionView()
        case "我的录单":
            return MyEvalutionView()
        case "我的客服":
            return MyEvalutionView()
        case "帮助与反馈":
            return MyEvalutionView()
        default:
            return MyEvalutionView()
        }
    }
}

struct ProfileRowsView: View {
    
    let rows: [ProfileRowModel] = [
        .init(imgSrc: "profile_evalution", title: "我的评价"),
        .init(imgSrc: "profile_note", title: "我的笔记"),
        .init(imgSrc: "profile_order_recoder", title: "我的录单"),
        .init(imgSrc: "profile_customer_service", title: "我的客服"),
        .init(imgSrc: "profile_feedback_help", title: "帮助与反馈"),
    ]
    
    var body: some View {
        
        VStack(spacing: 0) {
            ForEach(rows) { row in
                NavigationLink(destination: row.destination) {
                    HStack(spacing: 20) {
                        Image(row.imgSrc)
                        Text(row.title)
                            .font(.system(size: 15))
                            .foregroundColor(.FF333333)
                        Spacer()
                        NavArrowRightView()
                    }
                    .padding(.vertical, 20)
                    .edgeBorder(borderHeight: 1, edge: .bottom, color: .dividerLine)
                    .padding(.horizontal, 15)
                }
            }
        }
    }
}

struct ProfileRowsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRowsView()
    }
}
