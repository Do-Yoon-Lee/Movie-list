//
//  MovieListViewController.swift
//  Movie list
//
//  Created by Doyoon Lee on 2021/09/22.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let movieList: [Movie] = [
        Movie(title: "제목1", rate: 1.2),
        Movie(title: "제목2", rate: 1.3),
        Movie(title: "제목3", rate: 1.4)]
    
 
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        print("\(indexPath.row)번쨰가 뿌려집니다.")
        let movie = movieList[indexPath.row]
        cell.titleLabel.text = movie.title
        cell.rateLabel.text = "\(movie.rate)"
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)번쨰가 눌렸습니다.")
    }
}
