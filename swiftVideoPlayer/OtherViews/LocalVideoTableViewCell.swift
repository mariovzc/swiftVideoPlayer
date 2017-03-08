//
//  LocalVideoTableViewCell.swift
//  swiftVideoPlayer
//
//  Created by Giancarlo Valencia on 3/8/17.
//  Copyright © 2017 Saludtec. All rights reserved.
//

import UIKit

class LocalVideoTableViewCell: UITableViewCell {

    @IBOutlet weak var backGroundImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
