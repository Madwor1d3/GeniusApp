//
//  BorderButton.swift
//  Genius
//
//  Created by Madwor1d3 on 12/02/2019.
//  Copyright © 2019 Madwor1d3. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    
    func setupButton() {
        
        setShadow()
        setTitleColor(.white, for: .normal)
        titleLabel?.font     = UIFont(name: "AvenirNext-DemiBold", size: 18)
        layer.cornerRadius   = 20
        layer.borderWidth    = 2.0
        layer.borderColor    = UIColor.white.cgColor
    }
    
    
    private func setShadow() {
        
        layer.shadowColor   = UIColor.cyan.cgColor
        layer.shadowOffset  = CGSize(width: 0.0, height: 5.0)
        layer.shadowRadius  = 6
        layer.shadowOpacity = 0.5
        clipsToBounds       = true
        layer.masksToBounds = false
    }
}
