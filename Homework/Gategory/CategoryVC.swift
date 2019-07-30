//
//  GetegoryVC.swift
//  Homework
//
//  Created by nemsothea on 7/26/19.
//  Copyright © 2019 nemsothea. All rights reserved.
//

import UIKit


class CategoryVC: UIViewController {
    var categoryVM: CategoryVM?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryVM?.fetchCategory("", completion: { (data) in
        
        })
        // Do any additional setup after loading the view.
    }
    
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
