//
//  ComplexTableViewViewController.swift
//  TableViewLesson
//
//  Created by Ruslan Liulka on 31.08.2022.
//

import UIKit

class ComplexTableViewViewController: UIViewController {
    
    var arrayOfPeople: [Person] = []

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "PersonTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "PersonTableViewCell")
        
        self.arrayOfPeople = DataManager().getListOfPersons()
        tableView.reloadData()
    }
}

extension ComplexTableViewViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfPeople.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PersonTableViewCell") as? PersonTableViewCell else {return UITableViewCell()
            
        }
        cell.configur(with: arrayOfPeople[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
}
