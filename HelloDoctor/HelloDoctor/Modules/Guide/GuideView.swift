//
//  GuideView.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/13.
//

import SwiftUI

struct GuideView: View {
    
    @EnvironmentObject var rootScreen: RootScreenModel
    
    var body: some View {
        
        TabView {
            ForEach(GuideModel.guideModels) { guideModel in
                VStack {
                    Spacer(minLength: 60.5)

                    VStack {
                        Image(guideModel.topImgSrc)
                            .aspectRatio(324 / 356, contentMode: .fill)
                        VGap(height: 13)
                        Image(guideModel.bottomImgSrc)
                    }

                    Spacer(minLength: 33.5)

                    VStack {
                        Text(guideModel.title)
                            .font(.system(size: 29, weight: .medium))
                            .foregroundColor(.FF333333)
                        VGap(height: 20)
                        Text(guideModel.subtitle)
                            .font(.system(size: 17))
                            .foregroundColor(.FF666666)
                    }
                    if guideModel.progressImgSrc.isEmpty {
                        Spacer(minLength: 30)
                        RoundedRetangleElevatedButton(
                            title: "立即开启",
                            isInfinity: false,
                            titleSize: 15,
                            verticalPadding: 19,
                            horizontalPadding: 62
                        ) {
                            withAnimation {
                                // 判断是否登录来确定是登录页还是主页
                                rootScreen.screen = .login
                            }
                        }
                        Spacer(minLength: 29.5)
                    } else {
                        Spacer(minLength: 51)
                        Image(guideModel.progressImgSrc)
                        Spacer(minLength: 42.5)
                    }
                }
                .padding(.horizontal, 25.5)

            }
        }
        .ignoresSafeArea()
        .tabViewStyle(PageTabViewStyle())
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}
