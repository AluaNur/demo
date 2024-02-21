//
//  TabBarController.swift
//  Favorite Table View Controller
//
//  Created by Alua Nurakhanova on 31.01.2024.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setTabImages()
    }
    func setTabImages(){
        let homeSelectedImage = UIImage(named: "HomeSelected")!.withRenderingMode(.alwaysOriginal)
        let searchSelectedImage = UIImage(named: "SearchSelected")!.withRenderingMode(.alwaysOriginal)
        let profileSelectedImage = UIImage(named: "ProfileSelected")!.withRenderingMode(.alwaysOriginal)
        let favoriteSelectedImage = UIImage(named: "favoriteSelected")!.withRenderingMode(.alwaysOriginal)
        
        
        tabBar.items?[0].selectedImage = homeSelectedImage
        tabBar.items?[1].selectedImage = searchSelectedImage
        tabBar.items?[3].selectedImage = profileSelectedImage
        tabBar.items?[2].selectedImage = favoriteSelectedImage


    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
