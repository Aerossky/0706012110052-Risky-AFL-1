//
//  shop.swift
//  0706012110052-Risky-AFL 1
//
//  Created by MacBook Pro on 30/03/23.
//

import Foundation
struct Shop:ShopProtocol{
    var name:String
    var menu:[Menu]
    
    init(name: String, menu: [Menu]) {
        self.name = name
        self.menu = menu
    }
    //    create
    mutating func addItemShop(item: [Menu]) {
        self.menu += item
    }
    
    //    read
    func printMenu() -> [Menu] {
        for (index,item) in self.menu.enumerated() {
            print("\(index+1) \(item.name) - \(item.price.formatted(.currency(code: "IDR")))")
        }
        return menu
    }
    
}
  
    

