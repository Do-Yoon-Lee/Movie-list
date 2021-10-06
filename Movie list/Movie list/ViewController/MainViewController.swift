//
//  MainViewController.swift
//  Movie list
//
//  Created by Doyoon Lee on 2021/09/22.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //label.text = "text"
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        //label.text = "Hello"
    }
    @IBAction func pressedButton(_ sender: Any) {
        print("Hello World!!!")
    
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
          self.view.endEditing(true)
    }

}

