//
//  cart.swift
//  0706012110052-Risky-AFL 1
//
//  Created by MacBook Pro on 30/03/23.
//

import Foundation

class Cart:CartProtocol{
    var carts:[Item]=[]
    
    init() {
           // initializer tanpa parameter
       }
       
       init(carts: [Item]) {
           // initializer dengan parameter
           self.carts = carts
       }
    
    func addItemCart(_ item: Item) {
        carts.append(item)
    }
    
    func getCartListFill()->Bool{
        if carts.isEmpty{
            return true
        }else{
            return false
        }
    }
    
    func getCartList()  {
        if carts.isEmpty {
            print("Your cart is empty.")
            print()
            
        }
        
        var storeItems: [String: [String: Int]] = [:]
        for item in carts {
            if storeItems[item.shopName] == nil {
                storeItems[item.shopName] = [item.name: item.quantity]
            } else if storeItems[item.shopName]![item.name] == nil {
                storeItems[item.shopName]![item.name] = item.quantity
            } else {
                storeItems[item.shopName]![item.name]! += item.quantity
            }
        }
        
        for (storeName, items) in storeItems {
            print()
            print("Your order from \(storeName):")
            for (itemName, quantity) in items {
                print("- \(itemName) x\(quantity)")
            }
        }
        print()
    }
    
    func getCartTotalPrice() -> Int {
           var totalPrice: Int = 0
           for item in carts {
               totalPrice += Int(item.price) * Int(item.quantity)
           }
           return totalPrice
    }
    
    func checkoutPaymentCart(money:Int)-> Int{
        let money = money-getCartTotalPrice()
        return money
    }
   
}
