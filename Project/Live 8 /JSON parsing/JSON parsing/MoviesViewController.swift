//
//  MoviesViewController.swift
//  JSON parsing
//
//  Created by Ruslan Liulka on 07.09.2022.
//

import UIKit
import Alamofire

class MoviesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var arrayOfMovies: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let request = AF.request("https://api.themoviedb.org/3/trending/movie/week?api_key=5c813e7acbfe11515e2862a80c55f91d", method: .get)
        
        
        request.responseDecodable(of: TMDBResponce.self) { responce in
            
            print(responce.error)
            do {
                self.arrayOfMovies = try responce.result.get().results
                self.tableView.reloadData() 
                 
            } catch {
                
            }
            
        }
//        request.responseJSON { recieveData in //отримали якісь дані
//
//            let decoder = JSONDecoder() // створюємо декодер
//
//            guard let responsceDate = recieveData.data else {return} //дістаємо дані
//
//            //guard let data = try? decoder.decode(TMDBResponce.self, from: responsceDate) else {return} // дістаємо дані
//
//            do {
//                let data = try? decoder.decode(TMDBResponce.self, from: responsceDate)//дістаємо дані
//                print(data)
//            } catch {
//                print("Model is not working with our json models")
//            }
//        }
    }
}

extension MoviesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.arrayOfMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = arrayOfMovies[indexPath.row].originalTitle
        return cell
    }
    
    
}
