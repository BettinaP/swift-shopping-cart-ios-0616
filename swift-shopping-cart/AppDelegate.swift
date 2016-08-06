//  AppDelegate.swift

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        var shoppingCart = Cart()
        var newItem = Item.init(name: "anotherNewItem", priceInCents: 4)
        
            shoppingCart.removeItem(newItem)
        
        /**
         

        * Manually test your classes here.

        */
        
        // Do not alter
        return true //
    }   /////////////
}       ////////////

