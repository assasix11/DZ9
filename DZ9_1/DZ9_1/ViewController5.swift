//
//  ViewController5.swift
//  DZ9_1
//
//  Created by Дмитрий Зубарев on 20.03.2021.
//

import UIKit

class ViewController5:
    UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var info : String = "Hello"

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = info

    }

}
