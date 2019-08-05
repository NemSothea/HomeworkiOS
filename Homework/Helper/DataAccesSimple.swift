//
//  DataAccesSimple.swift
//  Homework
//
//  Created by nemsothea on 7/30/19.
//  Copyright © 2019 nemsothea. All rights reserved.
//

import Foundation
import Alamofire

class DataAccesSimple {
    static let shared = DataAccesSimple()
    
    func fetchData<T: Decodable>(_ url: String,completion: @escaping (T) -> ()) {
            guard let url = URL(string: url) else {return}
            URLSession.shared.dataTask(with: url){(data,_,err) in
                if let error = err {
                    print("Something went wrong!",error)
                    return
                }
                if let data = data {
                    do{
                        let obj = try JSONDecoder().decode(T.self, from: data)
                        DispatchQueue.main.async {
                            completion(obj)
                        }
                    }catch let json{
                        print("Failed json",json)
                    }
                }
            }.resume()
        }
    
    func fetch<T: Codable>( API: API_KEY, responseType: T.Type, completion: @escaping (_ data: T?, _ error: NSError?) -> Void ) {
        
        let manager = Alamofire.SessionManager.default
        let url = "\(API_KEY.categoryURL)"
        manager
            .request(url)
            .responseData { (responseData) in
                
        }
    
    }
    
    
}
