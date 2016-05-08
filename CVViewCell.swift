//
//  CVViewCell.swift
//  CV
//
//  Created by Илья Пупкин on 5/7/16.
//  Copyright © 2016 Илья Горевой. All rights reserved.
//

import UIKit

class CVViewCell: UITableViewCell {

    @IBOutlet weak var uniName: UILabel!
    @IBOutlet weak var yearU1: UILabel!
    @IBOutlet weak var yearU2: UILabel!
    @IBOutlet weak var photoUni: UIImageView!
    @IBOutlet weak var descr: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
