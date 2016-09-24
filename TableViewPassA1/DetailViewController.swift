//
//  DetailViewController.swift
//  TableViewPassA1
//
//  Created by admin on 9/24/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var dataArray = [String]()
    
    @IBOutlet weak var lblArray: UILabel!
//    @IBAction func unwindCollectionViewToDetail(segue:UIStoryboardSegue) {
//        if let pageOption1 = segue.source as? CustomTableViewCell {
//            let index = pageOption1.collectionView.indexPathsForSelectedItems
//            print("INDEX \(index)")
//            //let cell = pageOption1.collectionView.indexp
//            //let option1 = cell.lbl
//            //let index = pageOption1.collectionView.cellForItem(at: <#T##IndexPath#>)
////            let index = pageOption1.tableView.indexPathForSelectedRow
////            let cell = pageOption1.tableView.cellForRow(at: index!)
////            let option1 = cell?.textLabel?.text
////            option1Selected = option1
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("DataArray = \(dataArray)")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
