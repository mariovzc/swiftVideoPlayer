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
    
    @IBOutlet weak var tableView: UITableView!
    var data = [
        
        ["image": "dogge1", "title": "Dogge", "time": "00:13", "video": "01"],
        ["image": "dogge2", "title": "Dogge", "time": "00:13", "video": "02"],
        ["image": "dogge3", "title": "Dogge", "time": "00:13", "video": "03"],
        ["image": "dogge2", "title": "Dogge", "time": "00:13", "video": "03"],
        ["image": "dogge3", "title": "Dogge", "time": "00:13", "video": "02"],
        ["image": "dogge1", "title": "Dogge", "time": "00:13", "video": "01"],
        
    ]
    
    var playViewController = AVPlayerViewController()
    var playerView = AVPlayer()
    
    let cellIdentifier = "cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        registerCellInTable()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
extension LocalVideoVC{
    
    func registerCellInTable() {
        let nib:UINib = UINib(nibName: "LocalVideoTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: cellIdentifier)
    }

}

extension LocalVideoVC: UITableViewDataSource{
    private func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    private func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat {
        let cell = LocalVideoTableViewCell()
        return cell.heigthCell
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! LocalVideoTableViewCell
        
        
        let d = data[indexPath.row]
        cell.titleLabel.text = d["title"]
        cell.durationLabel.text = d["time"]
        cell.backGroundImage.image = UIImage(named: d["image"]!)
        return cell
    }

    
}
extension LocalVideoVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let d = data[indexPath.row]

        let path = Bundle.main.path(forResource: d["video"], ofType: "mp4")
        
        playerView = AVPlayer(url: NSURL(fileURLWithPath: path!) as URL)
        
        playViewController.player = playerView
        
        self.present(playViewController, animated: true) {
            self.playViewController.player?.play()
        }
        
    }
}
