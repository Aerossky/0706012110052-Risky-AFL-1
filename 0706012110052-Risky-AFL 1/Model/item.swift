//
//  item.swift
//  0706012110052-Risky-AFL 1
//
//  Created by MacBook Pro on 30/03/23.
//

import Foundation


class Item: Menu, ItemProtocol {
    var quantity: Int
    
    init(name: String, price: Int, shopName: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name, price: price, shopName: shopName)
    }
}
