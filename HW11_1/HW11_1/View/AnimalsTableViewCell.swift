//
//  AnimalsTableViewCell.swift
//  HW11_1
//
//  Created by Alex Neo on 05.11.2017.
//  Copyright © 2017 Alex Neo. All rights reserved.
//

import UIKit

class AnimalsTableViewCell: UITableViewCell {
    @IBOutlet private weak var ibImageView: UIImageView!
    @IBOutlet private weak var ibTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func update(title: String, image: UIImage) {
        ibImageView.image = image
        ibTitle.text = title
    }
}
