//
//  DetailsViewController.swift
//  HW11_1
//
//  Created by Alex Neo on 05.11.2017.
//  Copyright © 2017 Alex Neo. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet private weak var detailsImageView: UIImageView!
    @IBOutlet private weak var detailsInfo: UILabel!
    @IBOutlet private weak var detailsName: UILabel!
    var animals: Animal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = animals?.classOfAnimal
        detailsImageView.image = animals?.imageOfAnimal
        detailsInfo.text = animals?.infoListOfAnimal
        detailsName.text = animals?.nameOfAnimal
    }
}
