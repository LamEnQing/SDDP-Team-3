//
//  ExerciseViewController.swift
//  SDDP-iFit-Team3
//
//  Created by 182452K  on 7/7/20.
//  Copyright © 2020 SDDP_Team3. All rights reserved.
//

import UIKit

class ExerciseViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let exercise = ["Jump", "Crawl", "Jump", "Crawl", "Jump", "Crawl", "Jump", "Crawl"]
    let exerciseImage: [UIImage] = [UIImage(named: "pull_string")!, UIImage(named: "step_string")!, UIImage(named: "pull_string")!, UIImage(named: "step_string")!, UIImage(named: "pull_string")!, UIImage(named: "step_string")!, UIImage(named: "pull_string")!, UIImage(named: "step_string")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        layout.itemSize = CGSize(width: (self.collectionView.frame.size.width - 20)/2, height: (self.collectionView.frame.size.height - 50)/4)
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 5
        collectionView!.collectionViewLayout = layout
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return exercise.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ExerciseCell", for: indexPath) as! ExerciseCollectionViewCell
        
        cell.imageView.image = exerciseImage[indexPath.row]
        cell.nameLabel.text = exercise[indexPath.row]
        
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 0.5
        
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        <#code#>
//    }
//
//    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
//        <#code#>
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
