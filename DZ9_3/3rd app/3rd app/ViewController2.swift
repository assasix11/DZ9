//
//  ViewController2.swift
//  3rd app
//
//  Created by Дмитрий Зубарев on 20.03.2021.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationView = segue.destination as? ViewController
        destinationView?.modalPresentationStyle = .fullScreen
    }

}
