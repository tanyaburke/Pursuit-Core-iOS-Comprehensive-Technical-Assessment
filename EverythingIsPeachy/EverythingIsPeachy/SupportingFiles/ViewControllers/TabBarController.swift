//
//  TabBarController.swift
//  EverythingIsPeachy
//
//  Created by Tanya Burke on 3/17/20.
//  Copyright © 2020 Tanya Burke. All rights reserved.
//


//## List Items Screen
//
//- Display a list of data from an API (call these "Things").
//- The navigation title should tell the user what kind of Things they are receiving from online.
//- Entering text in the search bar searches for and displays relevant Things.
//- Have a favorite button in each cell.
//- Tapping the favorite button should fill the UI and make a call to favorite for that Thing in the backend. Animate this UI change.
//- Selecting a cell should segue to a detail View Controller that displays additional information about that Thing.
//- The navigation bar should have an item that allows the user to log out.

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .opaqueSeparator
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
