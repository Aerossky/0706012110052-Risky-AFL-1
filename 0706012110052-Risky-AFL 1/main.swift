//
//  main.swift
//  0706012110052-Risky-AFL 1
//
//  Created by MacBook Pro on 28/02/23.
//


import Foundation


//Declaration
var tukuShop = Shop(name: "Tuku Tuku", menu:[])
var gotriShop = Shop(name: "Gotri", menu: [])
var madamShop = Shop(name: "Madam", menu: [])
var kopteShop = Shop(name: "Kopte", menu: [])
var ngikanShop = Shop(name: "Ngikan", menu: [])
let cart:Cart = Cart()

//Add data shop with the menu
addData()
//Call view
MainView()





