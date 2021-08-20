//
//  NavArrowRight.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/15.
//

import SwiftUI

struct NavArrowRightView: View {
    var body: some View {
        Image(systemName: "chevron.right")
            .frame(width: 8, height: 16)
            .foregroundColor(.navRightArrowColor)
    }
}

struct NavArrowRight_Previews: PreviewProvider {
    static var previews: some View {
        NavArrowRightView()
    }
}
