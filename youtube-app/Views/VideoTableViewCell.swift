//
//  VideoTableViewCell.swift
//  youtube-app
//
//  Created by radjiv carrere on 7/13/20.
//  Copyright © 2020 radjiv carrere. All rights reserved.
//

import UIKit

class VideoTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    var video:Video?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(_ v:Video) {
        self.video = v
        self .titleLabel.text = video?.title
        
        guard self.video != nil else {
            return
        }
        
        // Set date title and thumbnail
        let df = DateFormatter()
        df.dateFormat = "EEEE, MM d, yyyy"
        self.dateLabel.text = df.string(from: video!.published)
        
        guard self.video!.thumbnail != "" else {
            return
        }
        
        //Check cach before dowloading data
        if let cachedData = CacheManager.getVideoCache(self.video!.thumbnail) {
            // Set the thumbnail imagevie
            self.thumbnailImageView.image = UIImage(data: cachedData)
            return
        }
        
        let url = URL(string: self.video!.thumbnail)
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url!) {( data, response, error) in
            if error == nil && data != nil {
                CacheManager.setVideoCache(url!.absoluteString, data)
                if url!.absoluteString != self.video?.thumbnail {
                    return
                }
                
                let image = UIImage(data: data!)
                DispatchQueue.main.async {
                    self.thumbnailImageView.image = image
                }
            }
        }
        // start data task
        dataTask.resume()
    }

}
