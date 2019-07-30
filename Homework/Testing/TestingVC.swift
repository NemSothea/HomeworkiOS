//
//  TestingVC.swift
//  Homework
//
//  Created by nemsothea on 7/29/19.
//  Copyright © 2019 nemsothea. All rights reserved.
//

import UIKit

class TestingVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        fetchHomeFeed { (homeFeed) in
//            print(homeFeed.videos.forEach {
//               print($0.numberOfViews)
//            })
//            print(homeFeed.videos.first?.channel?.name)
//           print(homeFeed.user?.name)
//        }
//        //Generic Function
//        let urlString = "https://api.letsbuildthatapp.com/youtube/home_feed"
//        BuilTheApp(urlString) { (homeFeed: HomeFeed) in
//            print(homeFeed.user?.name)
//        }

    }
    //MARK: fetchHomeFeed -> LetBuildTheApp Not GenericType
    fileprivate func fetchHomeFeed(completion: @escaping (HomeFeed) -> ()){
        let urlString = "https://api.letsbuildthatapp.com/youtube/home_feed"
        let url = URL(string: urlString)
        URLSession.shared.dataTask(with: url!) { (data,resp,err) in
            if let error = err {
                print("failed to fetch data ", error)
                return
            }
            guard let data = data else { return }
            do {
                let homeFeed = try JSONDecoder().decode(HomeFeed.self, from: data)
                completion(homeFeed)
    
            } catch let jsonErr {
                print("Failed Json",jsonErr)
            }
        }.resume()
    }
    //Mark: Generic Func
    fileprivate func BuilTheApp<T: Decodable>(_ url:String, completion: @escaping (T)->()) {
        let url = URL(string: url)
        URLSession.shared.dataTask(with: url!) {(data,resp,err) in
            guard let data = data else {return}
            do {
                let obj = try JSONDecoder().decode(T.self, from: data)
                completion(obj)
            }catch let json {
                print("Faild to converted",json)
            }
        }.resume()
        
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

struct HomeFeed: Codable {
    let user    :   user?
    let videos  :   [videos]
    struct user:Codable {
        let id      :   Int?
        let name    :   String?
        let username:   String?
    }
    struct videos: Codable {
        let id              :   Int?
        let name            :   String?
        let link            :   String?
        let imageUrl        : String?
        let numberOfViews   : Int?
        let channel         : channel?
    }
}
struct channel:Codable {
    let name                :String?
    let profileImageUrl     : String?
    let numberOfSubscribers : Int?
}
//User
struct UserTest : Codable {
    let user    : user?
    struct user: Codable {
        let id : Int
        let name : String
        let username : String
    }
}
