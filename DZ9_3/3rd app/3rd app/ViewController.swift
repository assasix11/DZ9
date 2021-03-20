//
//  ViewController.swift
//  3rd app
//
//  Created by Дмитрий Зубарев on 08.03.2021.
//

import UIKit

class ViewController: UIViewController {

    var upDown = 50
    var leftRight = 50
    
    var customView : UIView!
    
    var circle : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView = UIView(frame: UIScreen.main.bounds)
        
        let buttonUp = UIButton(frame: CGRect(x: Int(UIScreen.main.bounds.width) / 2 - 25, y: Int(UIScreen.main.bounds.height) - 200 , width: 50, height: 50))
        
        let buttonDown = UIButton(frame: CGRect(x: Int(UIScreen.main.bounds.width) / 2 - 25, y: Int(UIScreen.main.bounds.height) - 100, width: 50, height: 50))
        
        let buttonLeft = UIButton(frame: CGRect(x: Int(UIScreen.main.bounds.width) / 2 - 100, y: Int(UIScreen.main.bounds.height) - 150, width: 50, height: 50))
        
        let buttonRight = UIButton(frame: CGRect(x: Int(UIScreen.main.bounds.width) / 2 + 50, y: Int(UIScreen.main.bounds.height) - 150, width: 50, height: 50))
        
        circle = UILabel(frame: CGRect(x: UIScreen.main.bounds.width / 2 - CGFloat(leftRight), y: UIScreen.main.bounds.height / 2 - CGFloat(upDown), width: 100, height: 100))
        
        circle.text = "🎱"
        circle.font = UIFont(name: circle.font.fontName , size: 100)
        
        buttonUp.backgroundColor = .lightGray
        buttonDown.backgroundColor = .lightGray
        buttonLeft.backgroundColor = .lightGray
        buttonRight.backgroundColor = .lightGray
        customView.backgroundColor = .white
        
        buttonUp.setTitle("⬆️", for: .normal)
        buttonDown.setTitle("⬇️", for: .normal)
        buttonLeft.setTitle("⬅️", for: .normal)
        buttonRight.setTitle("➡️", for: .normal)
        
        customView.addSubview(buttonUp)
        customView.addSubview(buttonDown)
        customView.addSubview(buttonLeft)
        customView.addSubview(buttonRight)
        customView.addSubview(circle)
        
        view = customView
        
        buttonUp.addTarget(self, action: #selector(buttonUpp), for: .allTouchEvents)
        
        buttonDown.addTarget(self, action: #selector(buttonDownn), for: .allTouchEvents)
        
        buttonLeft.addTarget(self, action: #selector(buttonLeftt), for: .allTouchEvents)
        
        buttonRight.addTarget(self, action: #selector(buttonRightt), for: .allTouchEvents)
        
    }

    @objc func buttonUpp(sender: UIButton!) {
        print(UIScreen.main.bounds.height / 2 - CGFloat(upDown))
        if (UIScreen.main.bounds.height / 2 - CGFloat(upDown) - 2) > 0 {
        upDown = upDown + 10
        circle.removeFromSuperview()
        circle = UILabel(frame: CGRect(x: UIScreen.main.bounds.width / 2 - CGFloat(leftRight), y: UIScreen.main.bounds.height / 2 - CGFloat(upDown), width: 100, height: 100))
        circle.text = "🎱"
        circle.font = UIFont(name: circle.font.fontName , size: 100)
        customView.addSubview(circle)
        }
        
    }
    
    @objc func buttonDownn(sender: UIButton!) {
        
        if UIScreen.main.bounds.height / 2 - CGFloat(upDown) + 100 < UIScreen.main.bounds.height {
        upDown = upDown - 10
        circle.removeFromSuperview()
        circle = UILabel(frame: CGRect(x: UIScreen.main.bounds.width / 2 - CGFloat(leftRight), y: UIScreen.main.bounds.height / 2 - CGFloat(upDown), width: 100, height: 100))
        
        circle.text = "🎱"
        circle.font = UIFont(name: circle.font.fontName , size: 100)
        customView.addSubview(circle)
        print(UIScreen.main.bounds.height / 2 - CGFloat(upDown))
            
        }
        
    }
    
    @objc func buttonLeftt(sender: UIButton!) {
        print(UIScreen.main.bounds.width / 2 - CGFloat(leftRight))
        if UIScreen.main.bounds.width / 2 - CGFloat(leftRight) > 0 {
        leftRight = leftRight + 10
        circle.removeFromSuperview()
        circle = UILabel(frame: CGRect(x: UIScreen.main.bounds.width / 2 - CGFloat(leftRight), y: UIScreen.main.bounds.height / 2 - CGFloat(upDown), width: 100, height: 100))
        
        circle.text = "🎱"
        circle.font = UIFont(name: circle.font.fontName , size: 100)
        customView.addSubview(circle)
        }
    }
    
    @objc func buttonRightt(sender: UIButton!) {
        print(UIScreen.main.bounds.width / 2 - CGFloat(leftRight))
        if UIScreen.main.bounds.width / 2 - CGFloat(leftRight) + 100 < UIScreen.main.bounds.width {
        leftRight = leftRight - 10
        circle.removeFromSuperview()
        circle = UILabel(frame: CGRect(x: UIScreen.main.bounds.width / 2 - CGFloat(leftRight), y: UIScreen.main.bounds.height / 2 - CGFloat(upDown), width: 100, height: 100))
        
        circle.text = "🎱"
        circle.font = UIFont(name: circle.font.fontName , size: 100)
        customView.addSubview(circle)
        }
    }
    
}

