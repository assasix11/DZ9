//
//  ViewController2.swift
//  DZ9_2
//
//  Created by Дмитрий Зубарев on 20.03.2021.
//

import UIKit

class ViewController2: UIViewController {
    var person : Person!
    @IBOutlet weak var labelHair: UILabel!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelAge: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelHair.text = person.hair
        labelName.text = person.name
        labelAge.text = String(person.age)
    }

}
