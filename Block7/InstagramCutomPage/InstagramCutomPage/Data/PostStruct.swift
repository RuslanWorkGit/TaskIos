//
//  PostStruct.swift
//  InstagramCutomPage
//
//  Created by Ruslan Liulka on 02.09.2022.
//

import Foundation

struct Post {
    var avatarImageName: String
    var postImageName: String
    var userName: String
    var likesCount: Int
    var description: String
    var countOfComments: Int
    var postedAt: String
}


let firstExamp = Post(avatarImageName: "squirrel", postImageName: "publish-squirell",userName: "squuuurel-01", likesCount: 356, description: "Squirrels are members of the family Sciuridae, a family that includes small or medium-size rodents. ", countOfComments: 12, postedAt: "1 hours ago")
let secondExamp = Post(avatarImageName: "monkey", postImageName: "publish-monkey",userName: "mavpa", likesCount: 2054, description: "Today I met my bro from Argentina. We talk about global warming and war in Ukraine.", countOfComments: 573, postedAt: "9 minutes ago")
let thirdExamp = Post(avatarImageName: "koala", postImageName: "publish-koala",userName: "sleeper_2022", likesCount: 952, description: "I really like sleep. I prefer to sleep 18-20 hours a day. And I recomend be like me", countOfComments: 27, postedAt: "4 hours ago")


