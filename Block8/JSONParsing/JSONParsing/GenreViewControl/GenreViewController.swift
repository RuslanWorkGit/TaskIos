//
//  GenreViewController.swift
//  JSONParsing
//
//  Created by Ruslan Liulka on 08.09.2022.
//

import UIKit
import Alamofire

class GenreViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var arrayOfGenre: [Genre] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        let request = AF.request("https://api.themoviedb.org/3/genre/movie/list?api_key=5c813e7acbfe11515e2862a80c55f91d&language=en-US", method: .get)
        
        request.responseDecodable(of: FilmType.self) { response in
            guard let genre = response.value else {return}
            self.arrayOfGenre = genre.genres
            self.tableView.reloadData()
        }

        
    }

}

extension GenreViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfGenre.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = arrayOfGenre[indexPath.row].name
        return cell
    }
    
    
}
