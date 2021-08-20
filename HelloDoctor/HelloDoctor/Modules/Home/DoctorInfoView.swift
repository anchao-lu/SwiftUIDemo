//
//  DoctorInfoView.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/14.
//

import SwiftUI

struct DoctorInfoView: View {
    @State private var isDoctorAuthPassed = false
    
    var body: some View {
        
        HStack(spacing: 14) {
            Image("doctor_default_avatar")
            
            VStack(alignment: .leading) {
                Text("18313953251")
                    .font(.system(size: 18, weight: .medium))
                    .foregroundColor(.white)
                if isDoctorAuthPassed {
                    VGap(height: 7)
                    InfoView()
                } else {
                    StatusView()
                }
            }
            .onTapGesture {
                if isDoctorAuthPassed {
                    print("打开医生信息修改页")
                } else {
                    print("打开医生认证页")
                }
            }
            
            Spacer()
            
            VStack {
                VStack {
                    Image("home_invite_patient_code")
                    Text("邀请患者")
                        .foregroundColor(.white)
                        .font(.system(size: 12))
                }
                .onTapGesture {
                    print("打开医生二维码页")
                }
            }
        }
    }
}

struct DoctorInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorInfoView()
    }
}

struct InfoView: View {
    var body: some View {
        HStack {
            Text("主任医师")
                .font(.system(size: 14))
                .foregroundColor(.white)
            Text("骨科")
                .font(.system(size: 14))
                .foregroundColor(.white)
            Image(systemName: "chevron.right")
                .foregroundColor(.white)
                .frame(width: 6, height: 12)
        }
    }
}

struct StatusView: View {
    var body: some View {
        HStack {
            Image("home_doctor_auth_status_not")
            Text("去认证")
                .foregroundColor(.mainColor)
                .font(.system(size: 12))
                .lineLimit(1)
        }
        .background(
            Image("home_doctor_auth_status_bg")
        )
    }
}
