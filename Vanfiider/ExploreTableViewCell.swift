//
//  ExploreTableViewCell.swift
//  Vanfiider
//
//  Created by Kang Shiang Yap on 2016-03-27.
//  Copyright © 2016 Fiidup.Vanfiider. All rights reserved.
//

import UIKit

class ExploreTableViewCell : UITableViewCell {
    @IBOutlet var profilePicture: UIImageView!
    @IBOutlet var username: UILabel!
    @IBOutlet var moreButton: UIButton!
    @IBOutlet var date: UILabel!
    @IBOutlet var placeView: UIView!
    @IBOutlet var restaurantName: UILabel!
    @IBOutlet var foodImage: UIImageView!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var commentButton: UIButton!
    @IBOutlet var recommendButton: UIButton!
    @IBOutlet var keepButton: UIButton!
    @IBOutlet var likeNum: UILabel!
    @IBOutlet var commentNum: UILabel!
    @IBOutlet var approveNum: UILabel!
    @IBOutlet var comment: UITextView!
    
    func load_info_to_cell(fiid : Fiid){
        self.username.text = fiid.username
        self.profilePicture.image = fiid.profilePic
        self.restaurantName.text = fiid.restaurant
        self.foodImage.image = fiid.image
        self.likeNum.text = "\(fiid.likeCount)"
        self.commentNum.text = "\(fiid.commentCount)"
        self.approveNum.text = "\(fiid.approvalCount)"
        self.comment.text = fiid.comment
    }
}