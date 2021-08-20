//
//  DeptInfoCard.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/15.
//

import SwiftUI

struct DeptInfoCard: View {
    var body: some View {
        AuthCard(headerTitle: "科室信息") {
            AuthCardRow(typeName: "执业医院")
            AuthCardRow(typeName: "所属科室")
            AuthCardRow(typeName: "职称/职务", showBorder: false)
        }
    }
}

struct DeptInfoCard_Previews: PreviewProvider {
    static var previews: some View {
        DeptInfoCard()
    }
}
