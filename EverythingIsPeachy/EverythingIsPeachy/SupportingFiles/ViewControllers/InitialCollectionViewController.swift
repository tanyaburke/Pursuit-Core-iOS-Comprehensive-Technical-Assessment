//
//  CollectionViewController.swift
//  EverythingIsPeachy
//
//  Created by Tanya Burke on 3/17/20.
//  Copyright © 2020 Tanya Burke. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class InitialCollectionViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .orange
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

   
}
    
//extension InitialCollectionViewController: UICollectionViewDataSource  {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 5
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
////        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? NewsCell else {
////                   fatalError("could not downcast to NewsCell")
////               }
////               let article = newsArticles[indexPath.row]
////               cell.configureCell(with: article)
////               cell.backgroundColor = .systemBackground
////               return cell
//    }
//
        
    
//}
