//
//  StatesTableViewCell.swift
//  EcoFind_project
//
//  Created by Надя Мурдашева on 12.06.2020.
//  Copyright © 2020 Надя Мурдашева. All rights reserved.
//

import UIKit

class StatesTableViewCell: UITableViewCell {
    //@IBOutlet weak var imageFind: UIImageView!
    @IBOutlet weak var imageStates: UIImageView!
    //@IBOutlet weak var labelFind: UILabel!
    @IBOutlet weak var labelStates: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
