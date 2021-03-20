//
//  ViewController.swift
//  2nd app
//
//  Created by Дмитрий Зубарев on 07.03.2021.
//

import UIKit

class ViewController: UIViewController {
    var viewCustom : UIView!
    var viewCustom2 : UIView!
    var rectangle : UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewCustom = UIView(frame: UIScreen.main.bounds)
        viewCustom2 = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height - 150))
        
        let buttonCreate = UIButton(frame: CGRect(x: UIScreen.main.bounds.width / 2 - 150, y: UIScreen.main.bounds.height - 100, width: 100, height: 50))
        
        buttonCreate.setTitle("Fill", for: .normal)
        buttonCreate.backgroundColor = .gray
        
        let buttonClear = UIButton(frame: CGRect(x: UIScreen.main.bounds.width / 2 + 50, y: UIScreen.main.bounds.height - 100, width: 100, height: 50))
        
        buttonClear.backgroundColor = .gray
        buttonClear.setTitle("Clear", for: .normal)
        
        viewCustom.addSubview(viewCustom2)
        viewCustom.addSubview(buttonClear)
        viewCustom.addSubview(buttonCreate)
        
        viewCustom.backgroundColor = .lightGray
        
        viewCustom2.backgroundColor = .white
        
        view = viewCustom
        
        buttonCreate.addTarget(self, action: #selector(buttonActionCreate), for: .touchUpInside)
        
        buttonClear.addTarget(self, action: #selector(buttonActionClear), for: .touchUpInside)
        
        
    }

    @objc func buttonActionCreate(sender: UIButton!) {
        let maxY = 20
        let maxX = 15
        
        let massColor : [UIColor] = [.darkGray, .yellow, .blue, .red , .orange, .green, .brown , .gray]
        for i in 0...maxY {
            for j in 0...maxX {
                let lineOfSquad = Int(viewCustom2.bounds.width)/15
                
                
                let x1 = (Int(viewCustom2.bounds.width / CGFloat(maxX)) - 5 + (Int(viewCustom2.bounds.width / CGFloat(maxX)) * j))
               
                let y1 = (Int(viewCustom2.bounds.height / CGFloat(maxY)) + (Int(viewCustom2.bounds.height / CGFloat(maxY)) * i))
                
                
                rectangle = UIView(frame: CGRect(x: x1 , y: y1 , width: lineOfSquad, height: lineOfSquad))
                
                rectangle.backgroundColor = massColor[Int.random(in: 0...7)]
                
                if x1 + 20 < Int(viewCustom2.bounds.width) && y1 + 20 < Int(viewCustom2.bounds.height) {
                viewCustom2.addSubview(rectangle)
                    
                }
                
        
        }
        }
        

    }
    
    @objc func buttonActionClear(sender: UIButton!) {
        viewCustom2.removeFromSuperview()
        viewCustom2 = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height - 150))
        viewCustom2.backgroundColor = .white
        viewCustom.addSubview(viewCustom2)
        
    }
}





