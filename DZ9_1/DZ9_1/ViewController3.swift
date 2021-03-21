//
//  ViewController3.swift
//  DZ9_1
//
//  Created by Дмитрий Зубарев on 20.03.2021.
//

import UIKit

class ViewController3: UIViewController {
    var info : String = "Hello"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationView = segue.destination as? ViewController4
        destinationView?.info = info
    }

}
