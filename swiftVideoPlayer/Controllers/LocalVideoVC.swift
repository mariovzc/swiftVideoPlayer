//
//  LocalVideoVC.swift
//  swiftVideoPlayer
//
//  Created by Giancarlo Valencia on 3/8/17.
//  Copyright © 2017 Saludtec. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class LocalVideoVC: UIViewController {
    
    var data = [
        
        ["image": "dogge1", "title": "Dogge", "time": "00:13", "video": "01"],
        ["image": "dogge2", "title": "Dogge", "time": "00:13", "video": "02"],
        ["image": "dogge3", "title": "Dogge", "time": "00:13", "video": "03"],
        ["image": "dogge2", "title": "Dogge", "time": "00:13", "video": "03"],
        ["image": "dogge3", "title": "Dogge", "time": "00:13", "video": "02"],
        ["image": "dogge1", "title": "Dogge", "time": "00:13", "video": "01"],
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
