//
//  CustomView.swift
//  User Interface UI
//
//  Created by Ruslan Liulka on 17.08.2022.
//

import Foundation
import UIKit

protocol CustomViewDelegate: NSObject {
    
    func firstButtonPressed()
    func secondButtonPressed()
}

class CustomView: UIView {
    
    @IBOutlet weak var contentView: UIView!
    
    weak var delegate: CustomViewDelegate?
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            commonInit()
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            commonInit()
        }
        
        func commonInit() {
            Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)
            contentView.fixInView(self)
        }
    
    @IBAction func firstButtonPressed(_ sender: Any) {
        delegate?.firstButtonPressed()
    }
    
    @IBAction func secondButtonPressed(_ sender: Any) {
        delegate?.secondButtonPressed()
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
