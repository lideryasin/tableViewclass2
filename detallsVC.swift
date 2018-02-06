//
//  detallsVC.swift
//  TableViewSinpsonClass
//
//  Created by Yasin Lider on 6.02.2018.
//  Copyright © 2018 Yasin Lider. All rights reserved.
//

import UIKit

class detallsVC: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var meslekLabel: UILabel!
    
    var selecedSimpson = Simpson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = selecedSimpson.name
        meslekLabel.text = selecedSimpson.meslek
        imageView.image = selecedSimpson.image
        
    }
}
