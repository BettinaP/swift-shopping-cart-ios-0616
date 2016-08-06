//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by Bettina on 8/5/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Cart {
    
    var items : [Item] = []
    
    
    
    func totalPriceInCents() -> Int {
        
        var sum = 0
        
        for item in items { //only  have access to one item at a time inside the for loop so can't create variable inside the for loop
            
            sum += item.priceInCents //hold the value (sum) and i'll also keep adding to it
        }
        return sum
    }
    
    
    func addItem(newItem: Item) {
     
        items.append(newItem)
    
    }
    
    
    func removeItem(itemToRemove: Item) {
        
        if items.contains(itemToRemove) {
        
           let index = items.indexOf(itemToRemove)
            
            if let index = index {
                items.removeAtIndex(index)
            }
        }
       // var i = 0
      
        
        //for in loop, for loop compare the two together
        //if statement == comparison, find array.indexof(item.name) and remove it...otherwise use a counter becasue name is a string we can  use those methods that take in strings
        
        
        
//        .contains method is good for strings and then .remove
//        if array.contains("two"){
//            
//            let index: Int = array.indexOf("two")!
//            
//            array.removeAtIndex(index)
//        }
//
        
//        for item in array{
//            
//        let thing = array[i]
//        print("i: \(i) thing: \(thing)")
//        i = i + 1
//
//        }
//
//        for item in items {
//            
//            if itemToRemove == item.name {
//                items.remove(itemToRemove)
//            }
//        }
    }
    
    
    func itemsWithName(itemName : String) -> [Item]{

        var matchingItems :[Item] = []
        
        for item in items {
        
            if itemName == item.name{
            
                matchingItems.append(item)
            }
        }
        
        return matchingItems
    }
    
    
    
    
    func itemsWithMinimumPriceInCents(minPrice: Int) -> [Item] {
        
        var metMinPriceItems : [Item] = []
        
        for item in items {
        
            if  item.priceInCents >= minPrice {
                metMinPriceItems.append(item)
            }
        }
        return metMinPriceItems
    
    }
    
    func itemsWithMaximumPriceInCents(maxPrice: Int) -> [Item] {
    
        var metMaxPriceItems : [Item] = []
        
        for item in items {
            
            if  item.priceInCents <= maxPrice {
                metMaxPriceItems.append(item)
            }
        }
        return metMaxPriceItems
        
    }
}