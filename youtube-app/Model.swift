//
//  Model.swift
//  youtube-app
//
//  Created by radjiv carrere on 7/13/20.
//  Copyright © 2020 radjiv carrere. All rights reserved.
//

import Foundation

class Model {
    func getVideos() {
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            if error != nil || data == nil {
                return
            }
        }
        
        dataTask.resume()
    }
}
