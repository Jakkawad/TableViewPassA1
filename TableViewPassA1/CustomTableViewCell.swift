//
//  CustomTableViewCell.swift
//  TableViewPassA1
//
//  Created by admin on 9/24/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import Alamofire

class CustomTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    
//    var starwar:StarWars!

//    var starwarWrapper:StarWarsWrapper!
    
    var dataArray = ["A", "B", "C"]
    var dataArray2 = [String]()
    var dataArray3 = [String]()
    
    @IBOutlet weak var collectionView:UICollectionView!
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray2.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell0 = collectionView.dequeueReusableCell(withReuseIdentifier: "tableCell0", for: indexPath) as? CustomCollectionViewCell
        cell0?.lblName.text = dataArray2[indexPath.row]
        return cell0!
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        starwarWrapper = StarWarsWrapper()
//        starwarWrapper.downloadStarWar {
//            print("UPDATE UI")
//            print("Count: \(self.starwarWrapper.count)")
//        }
//        starwar = StarWars()
//        starwar.downloadStarWarDetail {
//            //print("StarWar name: \(self.starwar.name)")
//        }
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
