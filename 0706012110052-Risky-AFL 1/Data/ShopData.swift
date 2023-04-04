//
//  ShopData.swift
//  0706012110052-Risky-AFL 1
//
//  Created by MacBook Pro on 05/04/23.
//

import Foundation


//shop
    func addData(){
        let menuTuku = [
            Menu(id:1,name: "Nasi Kuning", price: 20000, shopName: "Tuku Tuku"),
            Menu(id:2,name: "Nasi Campur", price: 25000, shopName: "Tuku Tuku"),
            Menu(id:3,name: "Tahu Isi", price: 5000, shopName: "Tuku Tuku"),
            Menu(id:4,name: "Risol Ayam", price: 5000, shopName: "Tuku Tuku"),
            Menu(id:5,name: "Air Mineral", price: 3000, shopName: "Tuku Tuku"),
            
        ]
        
        let menuGotri = [
            //    Gotri
            Menu(id:5,name: "Nasi Bakar", price: 21000, shopName: "Gotri"),
            Menu(id:6,name: "Nasi Ayam", price: 25000, shopName: "Gotri"),
            Menu(id:7,name: "Mie Goreng Ayam", price: 15000, shopName: "Gotri"),
            Menu(id:8,name: "Mie Rebus Ayam", price: 14000, shopName: "Gotri"),
            Menu(id:9,name: "Es Degan Gotri", price: 10000, shopName: "Gotri"),
        ]
        
        let menuMadam=[
            //    Madam
            Menu(id:10,name: "Ayam Geprek", price: 35000, shopName: "Madam"),
            Menu(id:11,name: "Ayam Hijau", price: 35000, shopName: "Madam"),
            Menu(id:12,name: "Ayam Merah", price: 35000, shopName: "Madam"),
            Menu(id:13,name: "Ayam Hitam", price: 30000, shopName: "Madam"),
            Menu(id:14,name: "Ayam Jeder", price: 25000, shopName: "Madam"),
        ]
        let menuKopte=[
            //    Kopte
            Menu(id:15,name: "Americano", price: 18000, shopName: "Kopte"),
            Menu(id:16,name: "Cappucino", price: 25000, shopName: "Kopte"),
            Menu(id:17,name: "Happy Soda", price: 20000, shopName: "Kopte"),
            Menu(id:18,name: "Manngo Yakult", price: 10000, shopName: "Kopte"),
            Menu(id:19,name: "Croissant", price: 25000, shopName: "Kopte"),
        ]
        let menuNgikan=[
            //    Ngikan
            Menu(id:20,name: "Ngikan Matah", price: 25000, shopName: "Ngikan"),
            Menu(id:21,name: "Ngikan Geprek", price: 26000, shopName: "Ngikan"),
            Menu(id:22,name: "Ngikan Limau", price: 20000, shopName: "Ngikan"),
            Menu(id:23,name: "Ngikan Bakar", price: 22000, shopName: "Ngikan"),
            Menu(id:24,name: "Ngikan Uduk", price: 35000, shopName: "Ngikan"),
        ]
        
        //add menu
        tukuShop.addItemShop(item: menuTuku)
        gotriShop.addItemShop(item: menuGotri)
        madamShop.addItemShop(item: menuMadam)
        kopteShop.addItemShop(item: menuKopte)
        ngikanShop.addItemShop(item: menuNgikan)
    }
