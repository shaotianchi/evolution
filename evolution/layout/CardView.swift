//
//  CardView.swift
//  evolution
//
//  Created by Shao Tianchi on 2020/1/20.
//  Copyright © 2020 Shao Tianchi. All rights reserved.
//

import UIKit

class CardView: UIView {
    var card: Card?
    
    private lazy var skill1Image: UIImageView = UIImageView()
    private lazy var skill2Image: UIImageView = UIImageView()
    
    func setupCard(card: Card) {
        self.card = card
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addSubview(skill2Image)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
