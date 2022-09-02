//
//  MainCellTableViewCell.swift
//  InstagramCutomPage
//
//  Created by Ruslan Liulka on 02.09.2022.
//

import UIKit

class MainCellTableViewCell: UITableViewCell {

    @IBOutlet weak var friendImage: UIImageView!
    @IBOutlet weak var friendNickName: UILabel!
    @IBOutlet weak var moreImage: UIImageView!
    
    @IBOutlet weak var contentImage: UIImageView!
    
    @IBOutlet weak var likeImage: UIImageView!
    @IBOutlet weak var commentImage: UIImageView!
    @IBOutlet weak var sendImage: UIImageView!
    @IBOutlet weak var saveImage: UIImageView!
    
    @IBOutlet weak var countViews: UILabel!
    @IBOutlet weak var mainText: UILabel!
    @IBOutlet weak var commentCount: UILabel!
    @IBOutlet weak var pushTime: UILabel!
    
    func configure(with post: Post) {
        friendImage.image = UIImage(named: post.avatarImageName)
        friendImage.layer.cornerRadius = self.friendImage.frame.size.width / 2
        friendNickName.text = post.userName
        contentImage.image = UIImage(named: post.postImageName)
        countViews.text = String(post.viewsCount) + " Likes"
        mainText.text = post.description
        commentCount.text = String(post.countOfComments) + "comments"
        pushTime.text = post.postedAt
    }
    
    @IBAction func likePost(_ sender: Any) {
        UIImageView.animate(withDuration: 0.5, delay: 0) {
            self.likeImage.image = UIImage(systemName: "heart.fill")
            self.likeImage.tintColor = .red
           
            self.countViews.text = String(firstExamp.viewsCount + 1) + " Likes"
        }

    }
    
    @IBAction func savePost(_ sender: Any) {
        UIImageView.animate(withDuration: 0.5, delay: 0) {
            self.saveImage.image = UIImage(named: "save-instagram-gray")
        }

    }
    
    
}
