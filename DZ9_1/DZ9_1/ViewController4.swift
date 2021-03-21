//
//  ViewController4.swift
//  DZ9_1
//
//  Created by Дмитрий Зубарев on 20.03.2021.
//

import UIKit

class ViewController4: UIViewController {
    var info : String = "Hello"

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationView = segue.destination as? ViewController5
        destinationView?.info = info
    }

}
