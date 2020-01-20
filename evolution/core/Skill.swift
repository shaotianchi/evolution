//
//  Skill.swift
//  evolution
//
//  Created by Shao Tianchi on 2020/1/16.
//  Copyright © 2020 Shao Tianchi. All rights reserved.
//

import Foundation


struct Skill: Equatable {
    static func == (lhs: Skill, rhs: Skill) -> Bool {
        return lhs.name == rhs.name
    }
    
    var name: String
    var action: Any?
    
    // 脂肪组织
    static let fat = Skill(name: "Fat")
    // 合作协同
    static let cooperation = Skill(name: "Cooperation")
    // 断尾
    static let tailoff = Skill(name: "Tailoff")
    // 飞行
    static let fly = Skill(name: "Fly")
    // 食肉
    static let carnivorous = Skill(name: "Carnivorous")
    // 大体型
    static let largeSize = Skill(name: "LargeSize")
    // 拟态
    static let mimicry = Skill(name: "Mimicry")
    // 冬眠
    static let hibernation = Skill(name: "Hibernation")
    // 擅跑
    static let running = Skill(name: "Running")
    // 食腐
    static let carrion = Skill(name: "Carrion")
    // 琵琶鱼
    static let anglerfish = Skill(name: "Anglerfish")
    // 特化作用 A
    static let specialA = Skill(name: "Specialization A")
    // 特化作用 B
    static let specialB = Skill(name: "Specialization B")
    // 水生
    static let water = Skill(name: "Water")
    // 胎生
    static let viviparous = Skill(name: "Viviparous")
    // 有毒
    static let poisonous = Skill(name: "Poisonous")
    // 共生
    static let symbiosis = Skill(name: "Symbiosis")
    // 壳
    static let shell = Skill(name: "Shell")
    // 劫掠
    static let plunder = Skill(name: "Plunder")
    // 智力
    static let intelligence = Skill(name: "Intelligence")
    // 锐利眼神
    static let insight = Skill(name: "Insight")
    // 食草
    static let herbivorous = Skill(name: "Herbivorous")
    // 信息传递
    static let infomation = Skill(name: "Infomation")
    // 变态发育
    static let metamorphosis = Skill(name: "Metamorphosis")
    // 伪装
    static let camouflage = Skill(name: "Camouflage")
    // 寄生物
    static let parasite = Skill(name: "Parasite")
    // 吸虫
    static let fluke = Skill(name: "Fluke")
    // 伏击
    static let ambush = Skill(name: "Ambush")
    // 穴居
    static let caveman = Skill(name: "Caveman")
    // 墨云
    static let ink = Skill(name: "Ink")
}


