//
//  ViewController.swift
//  DZ9_2
//
//  Created by Дмитрий Зубарев on 20.03.2021.
//

import UIKit

class ViewController: UIViewController {
    let person = Person(name: "Alex", age: 34, hair: "Blonde")
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationView = segue.destination as? ViewController2
        destinationView?.person = person
    }

}

