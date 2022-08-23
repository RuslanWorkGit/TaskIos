//
//  MenuBlock.swift
//  Mono Page
//
//  Created by Ruslan Liulka on 22.08.2022.
//

import Foundation
import UIKit

class MenuBlock: UIView {
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var mainImage: UIImageView?
    @IBOutlet weak var mainLabel: UILabel?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()

    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("MenuBlock", owner: self, options: nil)
        mainView.layer.cornerRadius = 25
        mainView.fixInView(self)

        
    }
    
    func configure(with text: String = "error", image: UIImage) {
        self.mainImage?.image = image
        mainLabel?.text = text
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
