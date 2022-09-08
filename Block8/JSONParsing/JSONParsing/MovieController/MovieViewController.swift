//
//  MovieViewController.swift
//  JSONParsing
//
//  Created by Ruslan Liulka on 08.09.2022.
//

import UIKit
import Alamofire

class MovieViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var arrayOfMovies: [Result] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let request = AF.request("https://api.themoviedb.org/3/trending/movie/week?api_key=5c813e7acbfe11515e2862a80c55f91d", method: .get)
        
        request.responseDecodable(of: TMDBList.self) { response in
            guard let movie = response.value else {return}
            self.arrayOfMovies = movie.results
            self.tableView.reloadData()
        }  
    }

}

extension MovieViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayOfMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = arrayOfMovies[indexPath.row].originalTitle
        return cell
    }
    
    
}
