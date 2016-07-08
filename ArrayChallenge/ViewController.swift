//
//  ViewController.swift
//  ArrayChallenge
//
//  Created by James Campagno on 6/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var shoppingList: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let itemQuantities = [6, 4, 12, 4]
        let itemsNeeded = ["Bananas", "Apples", "Eggs", "Rolls"]
        var shoppingList : [String]
        
        shoppingList = makeShoppingList(itemsNeeded, quantityOfItems: itemQuantities)
        print(shoppingList)
    }
    func makeShoppingList(items: [String], quantityOfItems : [Int]) -> [String] {
        shoppingList = []
        for (index, thing) in quantityOfItems.enumerate() {
            let things = "\(index + 1). \(thing) \(items[index])"
            print(things)
            shoppingList.append(things)
            
        }
        return shoppingList
    }
}