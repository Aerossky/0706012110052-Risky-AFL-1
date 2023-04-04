//
//  CartProtocol.swift
//  0706012110052-Risky-AFL 1
//
//  Created by MacBook Pro on 03/04/23.
//

import Foundation
protocol CartProtocol {
    var carts: [Item] { get set }

    func getCartList()
    func getCartTotalPrice()->Int
}
