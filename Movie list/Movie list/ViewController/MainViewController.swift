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
        
        
    }
   
    func requestGet(url: String, completionHandler: @escaping (Bool, MovieResponse?) -> Void) {
        guard let url = URL(string: url) else {
            print("Error: cannot create URL")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard error == nil else {
                print("Error: error calling GET")
                print(error!)
                return
            }
            guard let data = data else {
                print("Error: Did not receive data")
                return
            }
            guard let response = response as? HTTPURLResponse, (200 ..< 300) ~= response.statusCode else {
                print("Error: HTTP request failed")
                return
            }
            guard let output = try? JSONDecoder().decode(MovieResponse.self, from: data) else {
                print("Error: JSON Data Parsing failed")
                return
            }
            
            completionHandler(true, output)
        }.resume()
    }
    
    @IBAction func pressedButton(_ sender: Any) {
        
        let url = "https://yts.lt/api/v2/list_movies.json"
        
        requestGet(url: url) { result, movieResponse in
            print(movieResponse)
        }
        
//        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "MovieListViewController") else {
//            return
//        }
//
//        //인자값으로 다음 뷰 컨트롤러를 넣고 present 메소드를 호출합니다.
//        //self.present(viewController, animated: true)
//        self.navigationController?.pushViewController(viewController, animated: true)
//
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
          self.view.endEditing(true)
    }

}

