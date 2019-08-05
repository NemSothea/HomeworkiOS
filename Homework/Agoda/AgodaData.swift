//
//  AgodaData.swift
//  Homework
//
//  Created by nemsothea on 7/26/19.
//  Copyright © 2019 nemsothea. All rights reserved.
//

import UIKit
struct AgodaData {
    let name:String?
    let detail:String?
    let image:UIImage?
    
    init(name:String,detail:String,image:UIImage) {
        self.name = name
        self.detail = detail
        self.image = image
    }
}
