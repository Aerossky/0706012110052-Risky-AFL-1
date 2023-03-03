//
//  main.swift
//  0706012110052-Risky-AFL 1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation

//inisialisasi variable
var userInput: String = ""

var tuku = [
    "Nasi kuning": 20000,
    "Tahu isi": 5000,
    "Air mineral": 3000
]

//var gotri = []
//var madam = []
//var kopte = []

repeat{
    print("Welcome to UC-Walk Cafeetaria 👨🏻‍🍳👩🏻‍🍳\n")
    print("""
    Please choose cafetaria:
        
    [1] Tuku-Tuku
    [2] Gotri
    [3] Madam Lie
    [4[ Kopte
    -
    [S]hopping Cart
    [Q]uit
    Your cafetaria choise?
    """)
    userInput = readLine()!
    switch userInput.lowercased() {
    case "1"  :
        repeat{
            print("""
        Hi,welcome back to Tuku-Tuku !
        What would you like to order?
        """)
            for (index, (key, value)) in tuku.enumerated() {
                print("[\(index)] \(key) = \(value)")
            }
            print("-")
            print("""
        [B]ack to Main Menu
        Your menu choice?
        """)
            userInput = readLine()!
        }while userInput.lowercased() != "b"
        //    case "2" :
        //
        //    case "3" :
        //
        //    case "4" :
        
    case "s":
        print("shopping cart")
    case "q":
        print("quit")
    default:
        print("Pilihan anda salah")
        
    }
}while userInput.lowercased() != "q"
