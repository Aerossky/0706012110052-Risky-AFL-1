//
//  menu.swift
//  0706012110052-Risky-AFL 1
//
//  Created by MacBook Pro on 30/03/23.
//

import Foundation
class Menu:MenuProtocol{
    var name:String
    var price:Int
    var shopName:String
    
    
    init(name: String, price: Int, shopName: String) {
         self.name = name
         self.price = price
         self.shopName = shopName
     }
}
