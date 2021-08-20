//
//  MyEvalutionView.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/14.
//

import SwiftUI

struct MyEvalutionView: View {
    
    var body: some View {
        Text("我的评价")
            .navigationTitle("我的评价")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct MyEvalutionView_Previews: PreviewProvider {
    static var previews: some View {
        MyEvalutionView()
    }
}
