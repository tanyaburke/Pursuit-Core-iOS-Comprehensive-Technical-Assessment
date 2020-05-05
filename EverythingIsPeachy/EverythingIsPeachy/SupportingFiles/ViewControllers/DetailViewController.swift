//
//  DetailViewController.swift
//  EverythingIsPeachy
//
//  Created by Tanya Burke on 3/17/20.
//  Copyright © 2020 Tanya Burke. All rights reserved.
//



//- Show additional information about the selected Thing.


import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var favButton: UIButton!
    
    @IBOutlet weak var textDetail: UITextView!
    
    @IBOutlet weak var detailImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .magenta
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func favButtonPressed(_ sender: UIButton!) {
    }
    
}
