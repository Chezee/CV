//
//  Base.swift
//  CV
//
//  Created by Илья Пупкин on 5/7/16.
//  Copyright © 2016 Илья Горевой. All rights reserved.
//

import UIKit

class Base {
    var backgroundImage: UIImage
    var name: String
    
    init(name: String, backgroundImage: UIImage){
        self.name = name
        self.backgroundImage = backgroundImage
    }
}