//
//  Constants.swift
//  youtube-app
//
//  Created by radjiv carrere on 7/13/20.
//  Copyright © 2020 radjiv carrere. All rights reserved.
//

import Foundation

struct Constants {
    static var API_KEY = "AIzaSyA8wa_1FIyniZRIVnd_vcanRqMlgu1yoWQ"
    static var PLAYLIST_ID = "PLMRqhzcHGw1ZkH8RuznGMS0NZs0jWQQ5a"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(PLAYLIST_ID)&key=\(API_KEY)"
    
}
