//
//  ExploreViewController.swift
//  Vanfiider
//
//  Created by Kang Shiang Yap on 2016-03-19.
//  Copyright © 2016 Fiidup.Vanfiider. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet var exploreTable: UITableView!
    
    let usernames = [
        "Elaine Lim",
        "Terence Quek",
        "Eng Hoe",
        "Samantha",
        ]
    
    let profilePics = [
        "profile.png",
        "profile1.png",
        "profile2.png",
        "profile3.png"
        ]
    
    let foodPics = [
        "food6.png",
        "food2.png",
        "food4.png",
        "food5.png"
        ]
    
    let likeNums = [
        123,
        413,
        212,
        34
        ]
    
    let commentNums = [
        12,
        31,
        53,
        12
        ]
    
    let approvalNums = [
        123,
        32,
        151,
        58
        ]
    
    let resturarants = [
        "Miku Japanese Fusion",
        "ABC Restaurants",
        "Santouka Ramen",
        "Kintaro Sushi"
        ]
    
    let dates = [
        "13m",
        "6h",
        "1d",
        "2w"
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.exploreTable.contentInset = UIEdgeInsets(top: 60, left: 0, bottom: 0, right: 0)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ExploreTableViewCell",forIndexPath: indexPath) as! ExploreTableViewCell
        let fiid = Fiid(username: self.usernames[indexPath.row], profilePic: UIImage(named: self.profilePics[indexPath.row])!, date: self.dates[indexPath.row], restaurant : self.resturarants[indexPath.row], image: UIImage(named: self.foodPics[indexPath.row])!, likeCount: self.likeNums[indexPath.row], commentCount: self.commentNums[indexPath.row], approvalCount: self.approvalNums[indexPath.row], isLiked: true, isCommented: true, isApproved: true, isKept: true, comment: "This is so good")
        cell.load_info_to_cell(fiid)
        return UITableViewCell()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.usernames.count
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
