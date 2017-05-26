//
//  RoundedImageView.swift
//  mvc-test
//
//  Created by Árthur Ken Aramaki Mota on 26/05/17.
//  Copyright © 2017 Árthur Ken Aramaki Mota. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {

    override func awakeFromNib() {
        
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
        
    }
    

}
