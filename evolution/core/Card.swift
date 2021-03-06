//
//  Card.swift
//  evolution
//
//  Created by Shao Tianchi on 2020/1/16.
//  Copyright © 2020 Shao Tianchi. All rights reserved.
//

import Foundation


struct Card: Equatable {
    var skill1: Skill
    var skill2: Skill?
    
    static func gen(count: UInt) -> [Card] {
        return (1...count).compactMap { i -> Card? in
            guard let card = cards.randomElement() else {
                return nil
            }
            cards.remove(at: cards.firstIndex(of: card)!)
            return card
        }
    }
}

private var cards = [
    Card(skill1: .plunder),
    Card(skill1: .symbiosis),
    Card(skill1: .largeSize, skill2: .carnivorous),
    Card(skill1: .cooperation, skill2: .fluke),
    Card(skill1: .infomation, skill2: .fluke),
    Card(skill1: .cooperation, skill2: .fluke),
    Card(skill1: .specialB, skill2: .fly),
    Card(skill1: .water),
    Card(skill1: .viviparous, skill2: .water),
    Card(skill1: .cooperation, skill2: .carnivorous),
    Card(skill1: .anglerfish, skill2: .carnivorous), // 琵琶鱼
    Card(skill1: .cooperation, skill2: .fluke),
    Card(skill1: .cooperation, skill2: .carnivorous),
    Card(skill1: .tailoff),
    Card(skill1: .mimicry),
    Card(skill1: .fly, skill2: .carnivorous),
    Card(skill1: .carrion),
    Card(skill1: .water),
    Card(skill1: .water),
    Card(skill1: .fat, skill2: .parasite),
    Card(skill1: .anglerfish, skill2: .carnivorous),
    Card(skill1: .parasite, skill2: .carnivorous),
    Card(skill1: .intelligence, skill2: .fat),
    Card(skill1: .ambush, skill2: .water),
    Card(skill1: .symbiosis),
    Card(skill1: .anglerfish, skill2: .carnivorous), // 琵琶鱼
    Card(skill1: .cooperation, skill2: .carnivorous),
    Card(skill1: .infomation, skill2: .carnivorous),
    Card(skill1: .infomation, skill2: .fat),
    Card(skill1: .insight, skill2: .fat),
    Card(skill1: .metamorphosis, skill2: .specialA),
    Card(skill1: .water),
    Card(skill1: .ambush, skill2: .water),
    Card(skill1: .largeSize, skill2: .carnivorous),
    Card(skill1: .camouflage, skill2: .fat),
    Card(skill1: .caveman, skill2: .fat),
    Card(skill1: .hibernation, skill2: .carnivorous),
    Card(skill1: .running),
    Card(skill1: .tailoff),
    Card(skill1: .largeSize, skill2: .fat),
    Card(skill1: .parasite, skill2: .fat),
    Card(skill1: .ink),
    Card(skill1: .parasite, skill2: .carnivorous),
    Card(skill1: .fluke, skill2: .fat),
    Card(skill1: .metamorphosis, skill2: .carnivorous),
    Card(skill1: .ink),
    Card(skill1: .water),
    Card(skill1: .carrion),
    Card(skill1: .fly, skill2: .specialA),
    Card(skill1: .plunder),
    Card(skill1: .largeSize, skill2: .fat),
    Card(skill1: .caveman, skill2: .fat),
    Card(skill1: .symbiosis),
    Card(skill1: .parasite, skill2: .carnivorous),
    Card(skill1: .camouflage, skill2: .fat),
    Card(skill1: .shell),
    Card(skill1: .ink),
    Card(skill1: .caveman, skill2: .fat),
    Card(skill1: .herbivorous, skill2: .fat),
    Card(skill1: .poisonous, skill2: .carnivorous),
    Card(skill1: .cooperation, skill2: .carnivorous),
    Card(skill1: .ink),
    Card(skill1: .shell),
    Card(skill1: .fluke, skill2: .fat),
    Card(skill1: .ambush, skill2: .specialB),
    Card(skill1: .parasite, skill2: .carnivorous),
    Card(skill1: .insight, skill2: .fat),
    Card(skill1: .viviparous, skill2: .specialB),
    Card(skill1: .tailoff),
    Card(skill1: .poisonous),
    Card(skill1: .water),
    Card(skill1: .parasite, skill2: .fat),
    Card(skill1: .fluke, skill2: .infomation),
    Card(skill1: .carrion),
    Card(skill1: .infomation, skill2: .carnivorous),
    Card(skill1: .caveman, skill2: .fat),
    Card(skill1: .poisonous, skill2: .carnivorous),
    Card(skill1: .cooperation, skill2: .fat),
    Card(skill1: .ambush, skill2: .specialB),
    Card(skill1: .fly, skill2: .specialA),
    Card(skill1: .mimicry),
    Card(skill1: .running),
    Card(skill1: .herbivorous, skill2: .fat),
    Card(skill1: .largeSize, skill2: .carnivorous),
    Card(skill1: .camouflage, skill2: .fat),
    Card(skill1: .metamorphosis, skill2: .specialA),
    Card(skill1: .shell),
    Card(skill1: .water),
    Card(skill1: .fluke, skill2: .cooperation),
    Card(skill1: .infomation, skill2: .carnivorous),
    Card(skill1: .parasite, skill2: .fat),
    Card(skill1: .water),
    Card(skill1: .intelligence, skill2: .specialA),
    Card(skill1: .camouflage, skill2: .fat),
    Card(skill1: .largeSize, skill2: .fat),
    Card(skill1: .plunder),
    Card(skill1: .metamorphosis, skill2: .carnivorous),
    Card(skill1: .mimicry),
    Card(skill1: .viviparous, skill2: .specialB),
    Card(skill1: .herbivorous, skill2: .fat),
    Card(skill1: .hibernation, skill2: .carnivorous),
    Card(skill1: .infomation, skill2: .carnivorous),
    Card(skill1: .herbivorous, skill2: .fat),
    Card(skill1: .insight, skill2: .fat),
    Card(skill1: .intelligence, skill2: .fat),
    Card(skill1: .intelligence, skill2: .specialA),
    Card(skill1: .plunder),
    Card(skill1: .shell),
    Card(skill1: .hibernation, skill2: .carnivorous),
    Card(skill1: .largeSize, skill2: .carnivorous),
    Card(skill1: .poisonous, skill2: .carnivorous),
    Card(skill1: .hibernation, skill2: .carnivorous),
    Card(skill1: .anglerfish, skill2: .carnivorous),
    Card(skill1: .symbiosis),
    Card(skill1: .viviparous, skill2: .water),
    Card(skill1: .running),
    Card(skill1: .fly, skill2: .specialB),
    Card(skill1: .carrion),
    Card(skill1: .running),
    Card(skill1: .mimicry),
    Card(skill1: .largeSize, skill2: .fat),
    Card(skill1: .fly, skill2: .carnivorous),
    Card(skill1: .tailoff),
    Card(skill1: .cooperation, skill2: .fat),
    Card(skill1: .insight, skill2: .fat)
].shuffled()
