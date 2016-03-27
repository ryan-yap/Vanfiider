//
//  Fiid.swift
//  Vanfiider
//
//  Created by Kang Shiang Yap on 2016-03-27.
//  Copyright © 2016 Fiidup.Vanfiider. All rights reserved.
//

import Foundation
import UIKit

class Fiid{
    var username : String;
    var profilePic : UIImage;
    var date    : String;
    var restaurant : String;
    var image : UIImage;
    var likeCount : Int;
    var commentCount : Int;
    var approvalCount : Int;
    var isLiked : Bool;
    var isCommented : Bool;
    var isApproved : Bool;
    var isKept : Bool;
    var comment : String;
    
    init(username: String, profilePic: UIImage, date: String, restaurant: String, image: UIImage, likeCount: Int, commentCount: Int, approvalCount: Int, isLiked : Bool, isCommented: Bool, isApproved: Bool, isKept : Bool, comment : String){
        self.username = username
        self.profilePic = profilePic
        self.date = date
        self.restaurant = restaurant
        self.image = image
        self.likeCount = likeCount
        self.commentCount = commentCount
        self.approvalCount = approvalCount
        self.isLiked = isLiked
        self.isCommented = isCommented
        self.isApproved = isApproved
        self.isKept = isKept
        self.comment = comment
    }
}