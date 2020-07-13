//
//  ViewController.swift
//  youtube-app
//
//  Created by radjiv carrere on 7/13/20.
//  Copyright © 2020 radjiv carrere. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        model.getVideos()
    }


}

