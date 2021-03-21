//
//  ViewController2.swift
//  DZ9_1
//
//  Created by Дмитрий Зубарев on 20.03.2021.
//

import UIKit

class ViewController2: UIViewController {
    var info : String = "Hello"

    override func viewDidLoad() {
        super.viewDidLoad()
        print(info)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationView = segue.destination as? ViewController3
        destinationView?.info = info
    }

}
