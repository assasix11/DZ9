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

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
