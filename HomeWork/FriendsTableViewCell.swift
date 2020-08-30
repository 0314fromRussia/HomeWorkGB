//
//  FriendsTableViewCell.swift
//  HomeWork
//
//  Created by Никита Дмитриев on 30.08.2020.
//  Copyright © 2020 Никита Дмитриев. All rights reserved.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        avatarImageView.layer.cornerRadius = avatarImageView.frame.size.height/2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(for model: Friend) {
        nameLabel.text = model.name
        ageLabel.text = "\(model.age)"
        avatarImageView.image = UIImage.init(named: model.imageName)
        
    }

}
