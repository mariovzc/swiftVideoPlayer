//
//  OnlineVideoVC.swift
//  swiftVideoPlayer
//
//

import UIKit
import AVKit
import AVFoundation
import PKHUD


class OnlineVideoVC: UIViewController, UIWebViewDelegate {
    //@IBOutlet weak var playerView: YouTubePlayerView!
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var playButton: UIButton!
    let videos = ["Xz57GUbNg1U", "ae9yfkZnNC8", "Aj8Su9a6gks", "fNIyDuyjZ-A", "7z3scVxFFj8", "zhwg80pBn6g", "FBrFJjfny6A", "LpvfQcevtOA"]
     var pos = 0
    var playViewController = AVPlayerViewController()
    var playerView = AVPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        HUD.dimsBackground = false
        HUD.allowsInteraction = false
        HUD.flash(.labeledProgress(title: "LOADING", subtitle: "WAIT!!!"))
        setVideo()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func prevbuttonAction() {
        if pos <= 0 {
            alert(message: "NO ACTIONS")
        }else{
            pos -= 1
            setVideo()
        }
    }
    @IBAction func playButtonAction() {
        setVideo()
    }
    @IBAction func nextButtonAction() {
        if (pos >= videos.count-1) {
            alert(message: "NO ACTIONS")
        }else{
            pos += 1
            setVideo()
        }
    }
    func setVideo() {
        guard
            let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videos[pos])")
            else { return }
        webView.loadRequest( URLRequest(url: youtubeURL) )
    }
    func alert(message:String){
        let alert = UIAlertController(title: "ALERT!!!", message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        HUD.hide()
    }
}
