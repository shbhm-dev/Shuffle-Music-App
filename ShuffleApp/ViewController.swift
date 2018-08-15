//
//  ViewController.swift
//  ShuffleApp
//
//  Created by STARKS on 8/14/18.
//  Copyright © 2018 STARKS. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    var myMusicPlayer = AVAudioPlayer()
    var musicList = ["wingspan","oaklawn-dreams","merluzzo","lennys-song","interlaken-crossroad","cayuga-summer","broken-shovel"]

    @IBOutlet weak var musicPlaying: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        makePlayerReady()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func shuffleTpd(_ sender: Any) {
    makePlayerReady()
        myMusicPlayer.play()
    
    
    }
    

    
    @IBAction func pauseTpd(_ sender: Any) {
    myMusicPlayer.pause()
    
    
    }
    
    @IBAction func Stoptpd(_ sender: Any) {
    myMusicPlayer.stop()
        myMusicPlayer.currentTime = 0
    
    
    }
    
    
    func makePlayerReady()
    {
        do{
            let randomMusic = Int(arc4random_uniform(7))
            let selectedMusic = musicList[randomMusic]
            musicPlaying.text = selectedMusic
            
            let myUrl = URL(fileURLWithPath: Bundle.main.path(forResource: selectedMusic, ofType: "mp3")!)
            
            
            myMusicPlayer = try AVAudioPlayer(contentsOf: myUrl)
            myMusicPlayer.prepareToPlay()
            
            
            
            
            
            
            
        }
        catch{
            print(error)
            
        }
        
        
        
        
        
    }
    







}

