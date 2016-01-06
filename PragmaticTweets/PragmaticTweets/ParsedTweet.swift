//
//  ParsedTweet.swift
//  PragmaticTweets
//
//  Created by Zakaria Ahmed on 05/01/16.
//  Copyright © 2016 Pragmatic Programmers, LLC. All rights reserved.
//

import UIKit

class ParsedTweet: NSObject {
    
    
    var tweetText: String?
    var userName: String?
    var createdAt: String?
    var userAvatarURL: NSURL?
    
    init(
        tweetText: String?,
        userName: String?,
        createdAt: String?,
        userAvatarURL: NSURL?)
    {
        super.init()
        self.tweetText = tweetText
        self.userName = userName
        self.createdAt = createdAt
        self.userAvatarURL = userAvatarURL
        
    }
    
}
