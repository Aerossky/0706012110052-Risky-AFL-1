//
//  ShopData.swift
//  0706012110052-Risky-AFL 1
//
//  Created by MacBook Pro on 05/04/23.
//

import Foundation


//shop
    func addData(){
//        58
        let menuTuku = [
            Menu(name: "Nasi Kuning", price: 20000, shopName: "Tuku Tuku"),
            Menu(name: "Nasi Campur", price: 25000, shopName: "Tuku Tuku"),
            Menu(name: "Tahu Isi", price: 5000, shopName: "Tuku Tuku"),
            Menu(name: "Risol Ayam", price: 5000, shopName: "Tuku Tuku"),
            Menu(name: "Air Mineral", price: 3000, shopName: "Tuku Tuku"),
            
        ]
        
//        85
        let menuGotri = [
            //    Gotri
            Menu(name: "Nasi Bakar", price: 21000, shopName: "Gotri"),
            Menu(name: "Nasi Ayam", price: 25000, shopName: "Gotri"),
            Menu(name: "Mie Goreng Ayam", price: 15000, shopName: "Gotri"),
            Menu(name: "Mie Rebus Ayam", price: 14000, shopName: "Gotri"),
            Menu(name: "Es Degan Gotri", price: 10000, shopName: "Gotri"),
        ]
//        160
        let menuMadam=[
            //    Madam
            Menu(name: "Ayam Geprek", price: 35000, shopName: "Madam"),
            Menu(name: "Ayam Hijau", price: 35000, shopName: "Madam"),
            Menu(name: "Ayam Merah", price: 35000, shopName: "Madam"),
            Menu(name: "Ayam Hitam", price: 30000, shopName: "Madam"),
            Menu(name: "Ayam Jeder", price: 25000, shopName: "Madam"),
        ]
//        98
        let menuKopte=[
            //    Kopte
            Menu(name: "Americano", price: 18000, shopName: "Kopte"),
            Menu(name: "Cappucino", price: 25000, shopName: "Kopte"),
            Menu(name: "Happy Soda", price: 20000, shopName: "Kopte"),
            Menu(name: "Manngo Yakult", price: 10000, shopName: "Kopte"),
            Menu(name: "Croissant", price: 25000, shopName: "Kopte"),
        ]
//        128
        let menuNgikan=[
            //    Ngikan
            Menu(name: "Ngikan Matah", price: 25000, shopName: "Ngikan"),
            Menu(name: "Ngikan Geprek", price: 26000, shopName: "Ngikan"),
            Menu(name: "Ngikan Limau", price: 20000, shopName: "Ngikan"),
            Menu(name: "Ngikan Bakar", price: 22000, shopName: "Ngikan"),
            Menu(name: "Ngikan Uduk", price: 35000, shopName: "Ngikan"),
        ]
        
        //add menu
        tukuShop.addItemShop(item: menuTuku)
        gotriShop.addItemShop(item: menuGotri)
        madamShop.addItemShop(item: menuMadam)
        kopteShop.addItemShop(item: menuKopte)
        ngikanShop.addItemShop(item: menuNgikan)
    }
