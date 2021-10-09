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
        
        let url = "https://yts.lt/api/v2/list_movies.json"
        
        let apiURI: URL! = URL(string: url)
        
        let apiData = try! Data(contentsOf: apiURI) // Data와 URL타입 객체 모두 Foundation프레임 워크에서 제공하는 클래스
        
        let str = String(decoding: apiData, as: UTF8.self)
        
        print(str)
    }
    
    @IBAction func pressedButton(_ sender: Any) {
        
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "MovieListViewController") else {
            return
        }
        
        //화면 전환 애니메이션을 설정합니다. coverVertical 외에도 다양한 옵션이 있습니다.
        viewController.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        
        //인자값으로 다음 뷰 컨트롤러를 넣고 present 메소드를 호출합니다.
        //self.present(viewController, animated: true)
        self.navigationController?.pushViewController(viewController, animated: true)
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
          self.view.endEditing(true)
    }

}

