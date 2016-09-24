//
//  ViewController.swift
//  TableViewPassA1
//
//  Created by admin on 9/24/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    @IBOutlet weak var tableView:UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell0") as? CustomTableViewCell
        cell0?.dataArray2 = ["AS", "12", "234"]
        return cell0!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "DetailSegue" {
            print("DetailSegue")
            if let collectionCell:CustomTableViewCell = sender as? CustomTableViewCell {
                if let collectionView:UICollectionView = collectionCell.superview as? UICollectionView {
                    if let collectionCell:UICollectionView = sender as? UICollectionView {
                        if let destination = segue.destination as? DetailViewController {
//                            destination.dataArray = collectionCell.
                            print("Tag \(collectionCell.tag)")
                        }
                    }
                }
            }
        } else {
            print("ErrorSegue")
        }
    }

}

