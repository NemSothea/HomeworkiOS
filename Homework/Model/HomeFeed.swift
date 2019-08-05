//
//  HomeFeed.swift
//  Homework
//
//  Created by nemsothea on 7/30/19.
//  Copyright © 2019 nemsothea. All rights reserved.
//

import Foundation
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
