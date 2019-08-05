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
        fetchData("http://api-ams.me/v1/api/categories") { (data) in
            print(data.DATA?.forEach({ print($0.NAME)}))
        }
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
     func fetchData(_ url: String,completion: @escaping (CategoryModel) -> ()) {
        guard let url = URL(string: url) else {return}
        
        URLSession.shared.dataTask(with: url){(data,_,err) in
            if let error = err {
                print("Something went wrong!",error)
                return
            }
            if let data = data {
                do{
                    let obj = try JSONDecoder().decode(CategoryModel.self, from: data)
                    DispatchQueue.main.async {
                        completion(obj)
                    }
                }catch let json{
                    print("Failed json",json)
                }
            }
            }.resume()
    }
    

}
