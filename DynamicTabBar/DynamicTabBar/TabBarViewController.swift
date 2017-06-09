//
//  TabBarViewController.swift
//  DynamicTabBar
//
//  Created by Alex Heck on 6/9/17.
//  Copyright © 2017 Alex Heck. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sb = UIStoryboard(name: "Views", bundle: nil)
        
        // if unrestricted viewer or data admin
        
        let item1 = sb.instantiateViewController(withIdentifier: "firstNavigationView")
        let item2 = sb.instantiateViewController(withIdentifier: "secondView")
        let item3 = sb.instantiateViewController(withIdentifier: "secondView")
        
        let controllers = [item1]
        
        if(controllers.count == 1) {
            self.tabBar.isHidden = true
        }
        
        self.viewControllers = controllers

        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print("Tab bar select...")
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Tab bar segue hit...")
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 

}
