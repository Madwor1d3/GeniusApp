//
//  BorderButton.swift
//  Genius
//
//  Created by Madwor1d3 on 12/02/2019.
//  Copyright © 2019 Madwor1d3. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        layer.borderWidth  =  2.0
        layer.borderColor  =  UIColor.white.cgColor
        layer.cornerRadius =  30
    }
    
}
