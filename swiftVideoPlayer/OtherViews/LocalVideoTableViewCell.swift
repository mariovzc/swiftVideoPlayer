//
//  LocalVideoTableViewCell.swift
//  swiftVideoPlayer
//

import UIKit

class LocalVideoTableViewCell: UITableViewCell {

    @IBOutlet weak var backGroundImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    let heigthCell:CGFloat = 220;

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
