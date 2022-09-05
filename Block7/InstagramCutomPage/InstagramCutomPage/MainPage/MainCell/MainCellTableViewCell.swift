//
//  MainCellTableViewCell.swift
//  InstagramCutomPage
//
//  Created by Ruslan Liulka on 02.09.2022.
//

import UIKit

protocol MainCellTableViewCellDelegate: AnyObject {
    func didLikeTapped(item: MainCellTableViewCell)
    func removeLikePost(item: MainCellTableViewCell)
}

class MainCellTableViewCell: UITableViewCell {


    @IBOutlet weak var friendImage: UIImageView!
    @IBOutlet weak var friendNickName: UILabel!
    @IBOutlet weak var moreImage: UIImageView!
    
    @IBOutlet weak var contentImage: UIImageView!
    
    @IBOutlet weak var likeImage: UIImageView!
    @IBOutlet weak var commentImage: UIImageView!
    @IBOutlet weak var sendImage: UIImageView!
    @IBOutlet weak var saveImage: UIImageView!
    
    @IBOutlet weak var sendPost: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var countlikes: UILabel!
    @IBOutlet weak var mainText: UILabel!
    @IBOutlet weak var commentCount: UILabel!
    @IBOutlet weak var pushTime: UILabel!
    
    weak var delegate: MainCellTableViewCellDelegate?
    
    func configure(with post: Post) {
        friendImage.image = UIImage(named: post.avatarImageName)
        friendImage.layer.cornerRadius = self.friendImage.frame.size.width / 2
        friendNickName.text = post.userName
        contentImage.image = UIImage(named: post.postImageName)
        countlikes.text = String(post.likesCount)
        mainText.text = post.description
        commentCount.text = String(post.countOfComments) + "comments"
        pushTime.text = post.postedAt
        
        addButtonAction()
    }
    
    private func addButtonAction() {
        likeButton.addTarget(self, action: #selector(likePost), for: .touchUpInside)

    }
    
    @objc private func likePost() {
        UIImageView.animate(withDuration: 0.5, delay: 0) {
            self.likeImage.image = UIImage(systemName: "heart.fill")
            self.likeImage.tintColor = .red
            
            if self.likeButton.tag == 0 {
                self.delegate?.didLikeTapped(item: self)
                self.likeButton.tag = 1
            } else {
                self.likeImage.image = UIImage(systemName: "suit.heart")
                self.likeImage.tintColor = .black
                self.delegate?.removeLikePost(item: self)
                self.likeButton.tag = 0
            }
            
        }
    }

    
    @IBAction func savePost(_ sender: Any) {
        UIImageView.animate(withDuration: 0.5, delay: 0) {
            self.saveImage.image = UIImage(named: "save-instagram-gray")
        }

    }
}
