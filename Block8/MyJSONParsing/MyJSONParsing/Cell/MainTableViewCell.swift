//
//  MainTableViewCell.swift
//  MyJSONParsing
//
//  Created by Ruslan Liulka on 10.09.2022.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var userPhoto: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userGender: UILabel!
    @IBOutlet weak var userNickName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var userPassword: UILabel!
    @IBOutlet weak var userDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        mainView.layer.cornerRadius = 15
        mainView.backgroundColor = .gray
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configure (with data: UserData) {
        
        userPhoto.downloaded(from: data.user.avatar, contentMode: .scaleToFill)
        userName.text = "Name \n" + data.user.firstName + " " + data.user.lastName
        userName.textAlignment = .center
        userGender.text = "Gender \n" + data.user.gender.rawValue
        userGender.textAlignment = .center
        userNickName.text = "NickName \n" + "@" + data.user.nickname
        userNickName.textAlignment = .center
        userEmail.text = "Email adress\n" + data.user.email
        userEmail.textAlignment = .center
        userPassword.text = "Pasword\n" + data.user.password
        userPassword.textAlignment = .center
        userDescription.text = "Description about user\n" + data.user.stringShort
        userDescription.textAlignment = .center
        
    }
}

extension UIImageView {
    func downloaded(from url: URL, contentMode mode: ContentMode = .scaleAspectFit) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() { [weak self] in
                self?.image = image
            }
        }.resume()
    }
    func downloaded(from link: String, contentMode mode: ContentMode = .scaleAspectFit) {
        guard let url = URL(string: link) else { return }
        downloaded(from: url, contentMode: mode)
    }
}
