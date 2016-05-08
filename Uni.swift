//
//  Uni.swift
//  CV
//
//  Created by Илья Пупкин on 5/7/16.
//  Copyright © 2016 Илья Горевой. All rights reserved.
//

import UIKit

class Uni {
    //MARK: Properties
    
    var name: String
    var photoUni: UIImage?
    var year1: String
    var year2: String?
    var descr: String
    
    //MARK: Init
    
    required init?(name: String, photo: UIImage?, year1: String, year2: String?, descr: String){
        self.name = name
        self.photoUni = photo
        self.year1 = year1
        self.year2 = year2
        self.descr = descr
    }
    
}
