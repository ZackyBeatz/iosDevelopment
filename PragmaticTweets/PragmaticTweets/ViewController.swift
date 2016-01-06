//
//  ViewController.swift
//  PragmaticTweets
//
//  Created by Zakaria Ahmed on 04/01/16.
//  Copyright © 2016 Pragmatic Programmers, LLC. All rights reserved.
//

import UIKit
import Social

class ViewController: UITableViewController {

    /*An array of example tweets, from our ParsedTweet class, which includes a tweetText, username, created at and a useravatar
    */
    var parsedTweets:[ParsedTweet] = [
        ParsedTweet(tweetText: "iOS 8 SDK Development now in print. " +
            "Swift programming FTW!", userName: "@pragprog", createdAt: "2014-08-20 16:44:30 EDT", userAvatarURL: NSURL(string: "https://abs.twimg.com/sticky/default_profile_images/default_profile_6_200x200.png")),
        
        ParsedTweet(tweetText: "Math Is Cool", userName: "@redqueencoder", createdAt: "2014-08-16 16:44:30 EDT", userAvatarURL: NSURL(string: "https://abs.twimg.com/sticky/default_profile_images/default_profile_6_200x200.png")),
        
        ParsedTweet(tweetText: "Anime is cool", userName: "@invalidname", createdAt: "2014-07-31 16:44:30 EDT", userAvatarURL: NSURL(string: "https://abs.twimg.com/sticky/default_profile_images/default_profile_6_200x200.png"))
    ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        reloadTweets()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    //Number of sections in the tableview
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    //Number of rows, should be equal to the amount of tweets in the parsedTweets array
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return parsedTweets.count
    }
    
    //Editing the cells in table
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //Styling the cell
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: nil)
        //creating a constant with the tweet array, and its indexpath.
        let parsedTweet = parsedTweets[indexPath.row]
        //The Cell's text should be equal to the parsedtweets, Tweettext
        cell.textLabel?.text = parsedTweet.tweetText
        return cell
    }
    
    
    //a function that Refreshes the view's content
    func reloadTweets() {
        tableView.reloadData()
    }
    
    
}

