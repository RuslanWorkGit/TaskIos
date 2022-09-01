//
//  PersonTableViewCell.swift
//  TableViewLesson
//
//  Created by Ruslan Liulka on 31.08.2022.
//

import UIKit

class PersonTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var cellContentView: UIView!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var companyLable: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var personDescriptonLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.avatarImageView.layer.cornerRadius = self.avatarImageView.frame.size.width / 2
        self.cellContentView.layer.cornerRadius = 10
    }
    
    func configur(with person: Person) {
        nameLable.text = person.firstName + " " + person.lastName
        companyLable.text = person.job.company
        cityLabel.text = person.location.city
        personDescriptonLable.text = person.differentSizeDescription
        avatarImageView.downloaded(from: person.avatarImage, contentMode: .scaleToFill)
    }
    
}
