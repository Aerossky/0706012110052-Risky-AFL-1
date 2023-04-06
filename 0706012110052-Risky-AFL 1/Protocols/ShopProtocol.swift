//
//  ShopProtocol.swift
//  0706012110052-Risky-AFL 1
//
//  Created by MacBook Pro on 03/04/23.
//

import Foundation

protocol ShopProtocol {
    var name: String { get set }
    var menu: [Menu] { get set }

    mutating func addItemShop(item:[Menu])
}
