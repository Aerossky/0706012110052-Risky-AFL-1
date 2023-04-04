//
//  cart.swift
//  0706012110052-Risky-AFL 1
//
//  Created by MacBook Pro on 30/03/23.
//

import Foundation

class Cart:CartProtocol{
    var carts:[Item]=[]

    func addItem(_ item: Item) {
          carts.append(item)
      }

    func getCartList() {
           // Membuat dictionary untuk menyimpan daftar item berdasarkan storeName
           var storeItems: [String: [Item]] = [:]
           for item in carts {
               if storeItems[item.shopName] == nil {
                   storeItems[item.shopName] = [item]
               } else {
                   storeItems[item.shopName]!.append(item)
               }
           }

           // Menampilkan daftar item berdasarkan storeName
           for (storeName, items) in storeItems {
               print("\(storeName):")
               for item in items {
                   print("- \(item.name) (\(item.quantity)) - \(item.price) ")
               }
           }
       }

    func getCartTotalPrice() -> Int {
           var totalPrice: Int = 0
           for item in carts {
               totalPrice += Int(item.price) * Int(item.quantity)
           }
           return totalPrice
       }

   
}
