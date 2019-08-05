//
//  CategoryViewModel.swift
//  Homework
//
//  Created by nemsothea on 7/26/19.
//  Copyright © 2019 nemsothea. All rights reserved.
//

import Foundation
struct CategoryVM :Decodable {
    
    let categoryVM: CategoryModel?
    func fetchCategory(urlString: String){
        DataAccesSimple.shared.fetchData(urlString) { (category: CategoryVM) in
            
        }
    }
    
}


