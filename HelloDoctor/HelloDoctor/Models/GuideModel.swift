//
//  GuideModel.swift
//  HelloDoctor
//
//  Created by monkey on 2021/7/15.
//

struct GuideModel: Identifiable {
    let id: Int
    let topImgSrc: String
    let bottomImgSrc = "guide_bottom"
    var progressImgSrc: String = ""
    let title: String
    let subtitle: String
    
    static let guideModels = [
        GuideModel(
            id: 0,
            topImgSrc: "guide_top1",
            progressImgSrc: "progress1",
            title: "碎片时间接诊看病",
            subtitle: "随时随地对话新老患者"
        ),
        GuideModel(
            id: 1,
            topImgSrc: "guide_top2",
            progressImgSrc: "progress2",
            title: "高效管理患者",
            subtitle: "患者不流失   打造个人品牌"
        ),
        GuideModel(
            id: 2,
            topImgSrc: "guide_top3",
            title: "专属HIS系统",
            subtitle: "医生的移动办公好帮手"
        )
    ]
}
