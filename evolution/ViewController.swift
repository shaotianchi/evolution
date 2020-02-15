//
//  ViewController.swift
//  evolution
//
//  Created by Shao Tianchi on 2020/1/16.
//  Copyright © 2020 Shao Tianchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var cardsView: UIView!
    
    lazy var localConnection = LocalConnection()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        localConnection.subscribeStatus { (status) in
            self.cardsView.subviews.forEach { $0.removeFromSuperview() }
            status.currentPlayer.status.cards.enumerated().map { (index, card) -> UIView in
                let title1 = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
                title1.text = card.skill1.name.localizedSkillName
                
                let title2 = UILabel(frame: CGRect(x: 0, y: 55, width: 100, height: 50))
                title2.text = card.skill2?.name.localizedSkillName
                
                let view = UIView(frame: CGRect(x: index * 105, y: 0, width: 100, height: 128))
                view.addSubview(title1)
                view.addSubview(title2)
                view.backgroundColor = .white
                
                return view
            }.forEach { self.cardsView.addSubview($0) }
        }.join("123", nickname: "RainbowPlayer")
    }


}

