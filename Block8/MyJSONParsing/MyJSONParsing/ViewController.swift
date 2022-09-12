//
//  ViewController.swift
//  MyJSONParsing
//
//  Created by Ruslan Liulka on 09.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    private var users: Products = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "MainTableViewCell", bundle: nil)
        myTableView.register(nib, forCellReuseIdentifier: "MainTableViewCell")
        
        loadUser {
            self.myTableView.reloadData()
        }
        
    }
    
    private func loadUser(completion: @escaping(() -> ())) {
        NetworkManager.shared.getRequest { [weak self] user in
            guard let self = self else {return}
            self.users = user
            completion()
        }
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = myTableView.dequeueReusableCell(withIdentifier: "MainTableViewCell") as? MainTableViewCell else {return UITableViewCell()}
        
        cell.configure(with: users[indexPath.row])
        return cell
        
    }
    
    
}

