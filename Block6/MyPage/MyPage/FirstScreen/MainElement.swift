//
//  MainElement.swift
//  MyPage
//
//  Created by Ruslan Liulka on 28.08.2022.
//

import Foundation
import UIKit

class MainElement: UIView {
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var mainPhoto: UIImageView!
    @IBOutlet weak var mainText: UILabel!
    @IBOutlet weak var nameText: UILabel!
    @IBOutlet weak var dateText: UILabel!
    
    @IBOutlet weak var leftView: UIView!
    @IBOutlet weak var messageImage: UIImageView!
    @IBOutlet weak var messageCount: UILabel!
    
    @IBOutlet weak var rightView: UIView!
    @IBOutlet weak var likeImage: UIImageView!
    @IBOutlet weak var likeCount: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("MainElement", owner: self, options: nil)
        mainView.fixInView(self)
        
        self.mainPhoto.layer.cornerRadius = self.mainPhoto.frame.size.width / 2
        
        mainView.layer.cornerRadius = 15
        leftView.layer.cornerRadius = 15
        rightView.layer.cornerRadius = 15

    }
    
    
    
    func config(image: UIImage, mainLable: String, name: String, date: String, commentCount: String, like: String) {
        mainPhoto.image = image
        mainText.text = mainLable
        nameText.text = name
        dateText.text = date
        messageCount.text = commentCount
        likeCount.text = like
    }
    
}

extension UIView
{
    func fixInView(_ container: UIView!) -> Void{
        self.translatesAutoresizingMaskIntoConstraints = false;
        self.frame = container.frame;
        container.addSubview(self);
        NSLayoutConstraint(item: self, attribute: .leading, relatedBy: .equal, toItem: container, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .trailing, relatedBy: .equal, toItem: container, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .top, relatedBy: .equal, toItem: container, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: self, attribute: .bottom, relatedBy: .equal, toItem: container, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
    }
    
}
