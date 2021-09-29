//
//  MainViewController.swift
//  Movie list
//
//  Created by Doyoon Lee on 2021/09/22.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressedButton(_ sender: Any) {
        print("Hello World!!!")
    
        button.backgroundColor = UIColor.blue
        label.textColor = .red
    }
   
}

