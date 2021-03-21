//
//  ViewController.swift
//  DZ9_1
//
//  Created by Дмитрий Зубарев on 20.03.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationView = segue.destination as? ViewController2
        destinationView?.info = "Its work"
    }

}

