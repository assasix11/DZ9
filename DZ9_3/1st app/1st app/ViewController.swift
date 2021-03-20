//
//  ViewController.swift
//  1st app
//
//  Created by Дмитрий Зубарев on 06.03.2021.
//

import UIKit

class ViewController: UIViewController {
    var earth : UILabel!
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    let imageOfStars = UIImage(named: "s1200")
    var imageStars : UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let customView = UIView(frame: UIScreen.main.bounds)
    
        earth = UILabel(frame: CGRect(x: (screenWidth/2 - 75), y: (screenHeight/2 - 75), width: 150, height: 150))
        earth.text = "🌏"
        earth.font = UIFont(name: earth.font.fontName, size: 150)
        
        imageStars = UIImageView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
        imageStars.image = imageOfStars
        
        customView.addSubview(imageStars)
        customView.addSubview(earth)
        
        view = customView
        
        let gestureRecognaizer = UITapGestureRecognizer(target: self, action: #selector(gestureTap(_ :)))
        
        earth.addGestureRecognizer(gestureRecognaizer)
        earth.isUserInteractionEnabled = true
        
    }
    
    @objc func gestureTap(_ gesture: UITapGestureRecognizer) {
        earth.frame = CGRect(x: (Int.random(in: 0..<Int(UIScreen.main.bounds.width - 150 ))), y: (Int.random(in: 0..<Int(UIScreen.main.bounds.height - 150))), width: 150, height: 150)
        
    }
    
    override func viewWillLayoutSubviews() {
        earth.frame = CGRect(x: (UIScreen.main.bounds.width / 2 - 75), y: (UIScreen.main.bounds.height/2 - 75), width: 150, height: 150)
        
        imageStars.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    }
    
    


}

