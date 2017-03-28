//
//  MenuCell.swift
//  lottie
//
//  Created by Alex on 3/27/17.
//  Copyright © 2017 alex. All rights reserved.
//

import UIKit
import Lottie

class MenuCell: UITableViewCell {
    var animationName: String!
      @IBOutlet weak var titleLabel: UILabel!

    var AnimationView: LOTAnimationView!
    override func awakeFromNib() {
        super.awakeFromNib()



        // Initialization code
      
    }

    override func layoutSubviews() {
        if AnimationView == nil {
            titleLabel.text = animationName
            AnimationView = LOTAnimationView(name: animationName)
            AnimationView.contentMode = .scaleToFill
     
            AnimationView.frame = CGRect(x: 10, y: 5, width: 60, height: 60)
            self.contentView.addSubview(AnimationView)
     

            AnimationView.play()

        }
    }

}
