//
//  ContentView.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/12.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var rootScreenModel: RootScreenModel
    
    var body: some View {
        rootScreenModel.rootScreen
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(RootScreenModel())
    }
}
