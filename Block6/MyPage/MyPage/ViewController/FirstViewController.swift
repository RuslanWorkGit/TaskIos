//
//  ViewController.swift
//  MyPage
//
//  Created by Ruslan Liulka on 28.08.2022.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var pageName: UILabel!
    @IBOutlet weak var chevronItem: UIImageView!
    @IBOutlet weak var searchItem: UIImageView!
    @IBOutlet weak var userPhoto: UIImageView!
    
    @IBOutlet weak var firstItemMenu: UILabel!
    @IBOutlet weak var secondItemMenu: UILabel!
    @IBOutlet weak var thirdItemMenu: UILabel!
    @IBOutlet weak var fourthItemMenu: UILabel!
    
    @IBOutlet weak var FirstPersonalInfo: MainElement!
    @IBOutlet weak var SecondPersonalInfo: MainElement!
    @IBOutlet weak var thirdPersonalInfo: MainElement!
    @IBOutlet weak var fourthPersonalInfo: MainElement!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstItemMenu.layer.cornerRadius = 15
        firstItemMenu.layer.masksToBounds = true
        
        userPhoto.image = UIImage(named: "User")
    
        FirstPersonalInfo.config(image: UIImage(named: "Mari")!, mainLable: "Any Nomand's wwant to live in Austin; April, May or June?", name: "Anu Priya", date: "Sep 25", commentCount: "347", like: "21")
        SecondPersonalInfo.config(image: UIImage(named: "Martin")!, mainLable: "Where do you spend winter?", name: "Ricky charles", date: "Sep 23", commentCount: "196", like: "268")
        thirdPersonalInfo.config(image: UIImage(named: "Alis")!, mainLable: "How do you avoid settling in one place?", name: "Alis Kumar", date: "Sep 20", commentCount: "62", like: "21")
        fourthPersonalInfo.config(image: UIImage(named: "John")!, mainLable: "Best way to find a basic room/flat in Chennai?", name: "John Saxena", date: "Sep 9", commentCount: "9", like: "543")
    }


}

