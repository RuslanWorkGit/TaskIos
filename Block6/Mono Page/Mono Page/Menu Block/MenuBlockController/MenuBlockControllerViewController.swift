//
//  MenuBlockControllerViewController.swift
//  Mono Page
//
//  Created by Ruslan Liulka on 22.08.2022.
//

import UIKit

class MenuBlockControllerViewController: UIViewController, MenuBlockDelegate {
    func menuElementPressed() {
        print("Menu Item Pressed!")
    }
    
    
    @IBOutlet weak var archive: MenuBlock!
    @IBOutlet weak var buingInParts: MenuBlock!
    @IBOutlet weak var installmentCard: MenuBlock!
    @IBOutlet weak var exchangeRate: ExchangeRates!
    
    @IBOutlet weak var leftIcon: UIImageView!
    @IBOutlet weak var rightIcon: UIImageView!
    @IBOutlet weak var flag: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        exchangeRate.config(firstCurrency: .USA, secondCurrency: .Poland)
        
        archive.configure(with: "Archive", image: UIImage(named: "archive")!)
        buingInParts.configure(with: "Buing in \n Parts", image: UIImage(named: "puzzle")!)
        installmentCard.configure(with: "Installment card", image: UIImage(named: "calendar")!)
        
        leftIcon.image = UIImage(named: "ukraine")
        rightIcon.image = UIImage(named: "coat-of-arms")
        flag.image = UIImage(named: "ukraineFlag")
       
        archive.delegate = self
        buingInParts.delegate = self
        installmentCard.delegate = self
        
    }

}
