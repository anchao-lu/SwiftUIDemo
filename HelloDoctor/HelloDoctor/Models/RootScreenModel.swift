//
//  UserStatus.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/12.
//

import SwiftUI

final class RootScreenModel: ObservableObject {
    
    enum Screen {
        /// 未选择用户类型：医生 or 医助
        case typeChoice
        /// 引导页
        case guide
        /// 已选择用户类型，但未登录
        case login
        /// 已登录，未提交过认证资料
        case auth
        /// 已登录，并且已经提交过认证资料
        case main
    }
    
    var rootScreen: some View {
        ZStack {
            switch self.screen {
            case .typeChoice:
                UserTypeView()
            case .guide:
                GuideView()
            case .login:
                LoginView()
            case .auth:
                AuthView()
            case .main:
                MainView()
            case .none:
                SplashView()
            }
        }
    }
    
    @Published var screen: Screen?
}
