//
//  ViewController.swift
//  SimpleUITableView
//
//  Created by Ruslan Liulka on 01.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainTableVIew: UITableView!
    let arrayOfMounths: [String] = ["January", "February", "March", "April", "May", "June", "July", "Agust", "September", "October", "November", "December"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mainTableVIew.delegate = self
        self.mainTableVIew.dataSource = self
       
    }
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfMounths.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = arrayOfMounths[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "MounthTapViewController") as! MounthTapViewController
        viewController.mounthName = arrayOfMounths[indexPath.row]
        viewController.mounthsNumber = String(indexPath.row + 1)
        self.navigationController?.pushViewController(viewController, animated: true)
       
        
        
        
    }
    
    
}
