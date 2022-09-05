//
//  MainPageViewController.swift
//  InstagramCutomPage
//
//  Created by Ruslan Liulka on 02.09.2022.
//

import UIKit

class MainPageViewController: UIViewController {



    @IBOutlet weak var tableView: UITableView!
    var arrayOfData: [Post] = [firstExamp, secondExamp, thirdExamp]
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        let nib = UINib(nibName: "MainCellTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "MainCellTableViewCell")
        
    }
    
    

}

extension MainPageViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfData.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MainCellTableViewCell") as? MainCellTableViewCell else {
            return UITableViewCell()
        }
        
        cell.configure(with: arrayOfData[indexPath.row])
        cell.delegate = self
        
        cell.sendPost.addTarget(self, action: #selector(sendPostPage), for: .touchUpInside)
        
        return cell
    }
    
    @objc func sendPostPage() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let newBoard = storyboard.instantiateViewController(withIdentifier: "SendPageViewController") as! SendPageViewController
        navigationController?.pushViewController(newBoard, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        600
    }
    
      
}

extension MainPageViewController: MainCellTableViewCellDelegate{
    func removeLikePost(item: MainCellTableViewCell) {
        guard let value = item.countlikes.text else {
            return
        }
        
        item.countlikes.text = String(Int(value)! - 1)
    }
    
    func didLikeTapped(item: MainCellTableViewCell) {
        guard let value = item.countlikes.text else {
            return
        }
        
        item.countlikes.text = String(Int(value)! + 1)
    }
}
