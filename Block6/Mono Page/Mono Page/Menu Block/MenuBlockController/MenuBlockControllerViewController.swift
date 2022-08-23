//
//  MenuBlockControllerViewController.swift
//  Mono Page
//
//  Created by Ruslan Liulka on 22.08.2022.
//

import UIKit

class MenuBlockControllerViewController: UIViewController {
    
    @IBOutlet weak var archive: MenuBlock!
    @IBOutlet weak var buingInParts: MenuBlock!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        archive.configure(with: "Archive", image: UIImage(named: "archive")!)
        buingInParts.configure(with: "Buing in \n Parts", image: UIImage(named: "puzzle")!)

        let firstBlock = MenuBlock(frame: CGRect(x: 20, y: 300, width: 375, height: 200))
        firstBlock.configure(with: "New Lable", image: UIImage(named: "calendar")!)
    
        self.view.addSubview(firstBlock)
    }

}
