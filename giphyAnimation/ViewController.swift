//
//  ViewController.swift
//  giphyAnimation
//
//  Created by Abdalla on 7/18/19.
//  Copyright © 2019 edu.data. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var img_view: UIImageView!
    
    var co = 1
    var tt = Timer()
    @objc func anim(){
        co += 1
        if co == 4{
            co = 0
        }
        img_view.image = UIImage(named: String(co))
    }
    
    @IBAction func btn_giphy(_ sender: Any) {
        tt = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.anim), userInfo: nil, repeats: true)
    }

    @IBAction func btn_stop(_ sender: Any) {
        tt.invalidate()
    }
    
    @IBAction func btn_speed(_ sender: Any) {
        tt = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController.anim), userInfo: nil, repeats: true)
    }
    
    @IBAction func btn_low(_ sender: Any) {
        tt = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(ViewController.anim), userInfo: nil, repeats: true)
    }
    
}

