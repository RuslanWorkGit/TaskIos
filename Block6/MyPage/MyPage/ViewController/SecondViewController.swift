//
//  SecondViewController.swift
//  MyPage
//
//  Created by Ruslan Liulka on 28.08.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var searchBar: UITextField!
    @IBOutlet weak var firstItemMenu: UILabel!
    
    
    @IBOutlet weak var firstImage: SecondScreen!
    @IBOutlet weak var secondImage: SecondScreen!
    
    @IBOutlet weak var userPhoto: UIImageView!
    
    @IBOutlet weak var firstSmallImage: SecondScreen!
    @IBOutlet weak var secondSmallImage: SecondScreen!
    @IBOutlet weak var thirdSmallImage: SecondScreen!
    @IBOutlet weak var fourthSmallImage: SecondScreen!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstItemMenu.layer.cornerRadius = 15
        firstItemMenu.layer.masksToBounds = true
        
        searchBar.attributedPlaceholder = NSAttributedString(string: "Search", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
        userPhoto.image = UIImage(named: "User")
        
        firstImage.config(image: UIImage(named: "ukraine-kiev")!, title: "Winter Kiev", data: "01.01.2021")
        secondImage.config(image: UIImage(named: "ukraine")!, title: "Beautiful Kiev", data: "03.08.2022")
    
        firstSmallImage.config(image: UIImage(named: "firstImg")!)
        secondSmallImage.config(image: UIImage(named: "secondImg")!)
        thirdSmallImage.config(image: UIImage(named: "thirdImg")!)
        fourthSmallImage.config(image: UIImage(named: "fourthImg")!)
    }
    
    
    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        
//        let scrollView = UIScrollView(frame: CGRect(x: 20, y: 250, width: view.frame.size.width - 20, height: view.frame.size.height - 20))
//        scrollView.backgroundColor = .green
//        view.addSubview(scrollView)
//        
//        let view = UIView(frame: CGRect(x: 20, y: 20, width: 200, height: 200))
//        view.backgroundColor = .blue
//        scrollView.addSubview(view)
//        
//        let bottomview = UIView(frame: CGRect(x: 20, y: 2000, width: 200, height: 200))
//        bottomview.backgroundColor = .blue
//        scrollView.addSubview(bottomview)
//        
//        scrollView.contentSize = CGSize(width: view.frame.size.width, height: 2200)
//        
//    }
    
}
