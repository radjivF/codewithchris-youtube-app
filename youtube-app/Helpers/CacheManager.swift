//
//  CacheManager.swift
//  youtube-app
//
//  Created by radjiv carrere on 7/14/20.
//  Copyright © 2020 radjiv carrere. All rights reserved.
//

import Foundation

class CacheManager {
    
    static var cache = [String:Data]()
    static func setVideoCache(_ url:String, _ data:Data?) {
        //Store the image data and use the url as the key
        cache[url] = data
    }
    
    static func getVideoCache(_ url:String) -> Data? {
        // Try to get the data for the specidied url
        return cache[url]
    }
    
}
