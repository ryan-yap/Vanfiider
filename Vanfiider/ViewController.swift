//
//  ViewController.swift
//  Vanfiider
//
//  Created by Kang Shiang Yap on 2016-03-19.
//  Copyright © 2016 Fiidup.Vanfiider. All rights reserved.
//

import PagingMenuController

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let viewController1 = self.storyboard?.instantiateViewControllerWithIdentifier("ExploreViewController") as! ExploreViewController
        viewController1.title = "Explore"
        let viewController2 = self.storyboard?.instantiateViewControllerWithIdentifier("PantryViewController") as! PantryViewController
        viewController2.title = "Pantry"
        
        let viewControllers = [viewController1, viewController2]
        
        var options = PagingMenuOptions()
        options.menuPosition = .Bottom
        options.menuDisplayMode = .SegmentedControl
        options.menuHeight = 60;
        let pagingMenuController = self.childViewControllers.first as! PagingMenuController
        pagingMenuController.setup(viewControllers: viewControllers, options: options)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

