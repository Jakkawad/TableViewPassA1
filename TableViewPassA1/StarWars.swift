//
//  StarWars.swift
//  TableViewPassA1
//
//  Created by admin on 9/24/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import Foundation
import Alamofire

class StarWars {
//    var _name:String!
    
//    var name:String! {
//        if _name == nil {
//            _name = "Name Fail"
//        }
//        return _name
//    }
    
    var _result:Array<StarWarsSpecies>!
    
    func downloadStarWarDetail(completed: @escaping DownloadComplete) {
        let starwarURL = URL(string: BASE_URL)!
        Alamofire.request(starwarURL).responseJSON { response in
            let result = response.result
            //print("RESULT: \(result)")
            let dict = result.value as? Dictionary<String, AnyObject>
            //print("Dict: \(dict)")
            let results = dict?["results"] //as? Dictionary<String, AnyObject>
            print("Results: \(results)")
            print("Results[0]: \(results?[0])")
//            if let dict = result.value as? Dictionary<String, AnyObject> {
//                if let result = dict["results"] as? Dictionary<String, AnyObject> {
//                    //self._result = result.
//                    print("RESULTS: \(result)")
//                }
//            }
//            if let dict = result.value as? Dictionary<String, AnyObject> {
//                if let name = dict["name"] as? String {
//                    self._name = name.capitalized
//                    print("Name: \(self._name)")
//                }
//            }
        }
        completed()
    }
}

class StarWarsSpecies {
    var _name:String!

    var name:String! {
        if _name == nil {
            _name = ""
        }
        return _name
    }
}
//class StarWarsWrapper {
//    var _count:Int!
//    var _next:String!
//    var _previous:String!
//    var _results:Array<StarWarsSpecies>!
//    
//    var count:Int {
//        if _count == nil {
//            _count = 0
//        }
//        return _count
//    }
//    
//    var next:String {
//        if _next == nil {
//            _next = ""
//        }
//        return _next
//    }
//    
//    var previous:String {
//        if _previous == nil {
//            _previous = ""
//        }
//        return _previous
//    }
//    
//    var result:Array<StarWarsSpecies> {
//        return _results
//    }
//    
//    func downloadStarWar(completed: @escaping DownloadComplete) {
//        let starwarURL = URL(string: BASE_URL)!
//        Alamofire.request(starwarURL).responseJSON { response in
//            let result = response.result
//            print("RESULT = \(response.result)")
//            if let dict = result.value as? Dictionary<String, AnyObject> {
//                if let next = dict["next"] as? String {
//                    self._next = next.capitalized
//                    print("Next: \(self._next)")
//                }
//                
//                if let previous = dict["previous"] as? String {
//                    self._previous = previous.capitalized
//                    print("Previous: \(self._previous)")
//                }
//            }
//        completed()
//        }
//    }
//}
//class StarWarsSpecies {
//    var _name:String!
//    
//    var name:String! {
//        if _name == nil {
//            _name = ""
//        }
//        return _name
//    }
//}
