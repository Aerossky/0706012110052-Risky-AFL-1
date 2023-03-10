//
//  main.swift
//  0706012110052-Risky-AFL 1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation

//inisialisasi variable
var userInput: String = ""

//Tipe data
typealias Cart = (cshopName: String, cmenuName:String, cprice:Double, cquantity:Double)
var cartArray: [Cart] = []


var tuku = [
    "Nasi Kuning": 20000,
    "Nasi Campur": 25000,
    "Tahu Isi": 5000,
    "Air Mineral": 3000,
    "Risol": 5000
]
var gotri = [
    "Nasi Bakar": 21000,
    "Nasi Ayam": 25000,
    "Nasgor Ayam": 15000,
    "Mie Rebus": 14000,
    "Es Degan Gotri": 10000
   
]
var madam = [
    "Ayam Geprek":35000,
    "Ayam Hijau":35000,
    "Ayam Merah":31000,
    "Ayam Hitam":25000,
    "Ayam Jeder Madam":30000
    
]
var kopte = [
    "Soda Gembira Kopte":18000,
    "Kopi Hitam": 5000,
    "Es Teh": 5000,
    "Jus Mangga":10000,
    "Jus Nanas":15000
]
var ngikan = [
    "Ngikan Matah": 25000,
    "Ngikan Geprek": 26000,
    "Ngikan Limau": 20000,
    "Ngikan Bakar": 22000,
    "Ngikan Special":35000
    ]
//sorted array tupple
let sortedTuku = tuku.sorted(by:{ $0.value < $1.value })
let sortedGotri = gotri.sorted (by:{ $0.value < $1.value })
let sortedMadam = madam.sorted (by:{ $0.value < $1.value })
let sortedKopte = kopte.sorted (by:{ $0.value < $1.value })
let sortedNgikan = ngikan.sorted (by:{ $0.value < $1.value })


//program start
mainScreen()

func mainScreen(){
    repeat{
        print("Welcome to UC-Walk Cafeetaria 👨🏻‍🍳👩🏻‍🍳\n")
        print("""
        Please choose cafetaria:
            
        [1] Tuku-Tuku
        [2] Gotri
        [3] Madam Lie
        [4] Kopte
        [5] Ngikan
        -
        [S]hopping Cart
        [Q]uit
        Your cafetaria choise?
        """)
        userInput = readLine()!
        switch userInput.lowercased() {
        case "1"  :
        buyScreen(storeSorted: sortedTuku, storeName: "Tuku - Tuku")
        case "2" :
        buyScreen(storeSorted: sortedGotri, storeName: "Gotri")
        case "3" :
        buyScreen(storeSorted: sortedMadam, storeName: "Madam Lie")
        case "4" :
            buyScreen(storeSorted: sortedKopte, storeName: "Kopte")
        case "5" :
            buyScreen(storeSorted: sortedNgikan, storeName: "Ngikan")
        case "s":
            print("masuk")
            repeat{
                if cartArray.count == 0
                {
                    print("Your cart is empty!")
                    print("")
                    userInput = "b"
                }else{
                    print("")
                    print("Shopping Cart")
                    var result = [String: [String: Double]]()
//                    nama toko dan item
                    for (shopName, menuName, _, quantity) in cartArray {
                        result[shopName, default: [:]][menuName, default: 0] += quantity
                    }
                    for (shopName, menu) in result {
                        print("Your order from \(shopName):")
                        for (menuName, quantity) in menu {
                            print("- \(menuName) | x\(Int(quantity))")
                        }
                    }
                    print("")
                    print("Press [B] to go back")
                    print("Press [P] to pay / checkout")
                    print("Your choice?")
                    userInput = readLine()!
                    switch userInput.lowercased() {
                    case "b":
                        print("Back")
                    case "p":
                        var totalPrice = 0
                        //cara kali
                        for i in 0..<cartArray.count{
                            totalPrice += Int(cartArray[i].2 * cartArray[i].3)
                        }
                        print("Your total order: \(totalPrice.formatted(.currency(code: "IDR")))")
                        print("Enter the amount of your money:")
                        print("Please enter your payment.")
                        print("")
                        repeat{
                            print("Enter the amount of your money:")
                            userInput = readLine()!
                            if let value = Int(userInput), value > 0 && value >= totalPrice {
                                print("Your total order : \(totalPrice.formatted(.currency(code: "IDR")))")
                                print("You pay: \(value.formatted(.currency(code: "IDR"))) Change: \((value - totalPrice).formatted(.currency(code: "IDR")))")
                                print("")
                                print("Enjoy your meals!")
                                print("")
                                repeat{
                                    print("Press [return] to go back to main screen")
                                    userInput = readLine()!
                                    switch userInput.lowercased() {
                                    case ""  :
                                        cartArray.removeAll()
                                        print("terimakasih")
                                        mainScreen()
                                    default:
                                        print("salah")
                                    }
                                }while userInput.lowercased() != ""
                            } else if userInput == "0" {
                                print("Payment can't be zero.")
                            } else {
                                print("Your total order : \(totalPrice)")
                                print("Please enter a valid amount")
                            }
                        }while userInput.lowercased() != "return"
                    default:
                        print("Input Salah")
                    }
                    print(cartArray)
                }

            }while userInput.lowercased() != "b"
        case "q":
            print("quit")
            exit(0)
        default:
            print("Maaf input anda salah\n")
            
        }
    }while userInput.lowercased() != "q"
}

func buyScreen(storeSorted: [(String, Int)], storeName: String){
    repeat{
       //memanggil function getMenu
        getMenu(name: storeSorted, storeName: storeName)
       //memanggil function storeMenu
        userInput = readLine()!
        //tidak kurang dari 0 dan tidak lebih dari banyak menu
        if let inputNumber = Int(userInput), inputNumber > 0, inputNumber <=  getMenuLength(name: tuku) {
            //buyMenu()
            
            print("\(storeSorted[inputNumber-1].0) @ \(storeSorted[inputNumber-1].1.formatted(.currency(code: "IDR")))")
            print("How many \(storeSorted[inputNumber-1].0) do you want to buy?")
            userInput = readLine()!
            if let quantity = Int(userInput), quantity > 0{
                buyMenu(shopName: storeName, menuName:storeSorted[inputNumber-1].0 , price: Double(storeSorted[inputNumber-1].1), quantity: Double(quantity))
                print("Thank you for ordering.")
            }else{
                print("Maaf input anda salah.")
            }
        }else{
            print("Maaf input anda salah")
        }
        
    }while userInput.lowercased() != "b"
}



//logic function
//getMenu: menampilkan semua menu yang ada di sebuah toko sesuai nama toko, (arraymenu, namatoko)
func getMenu(name: [(String, Int)], storeName: String){
    print("""

Hi,welcome back to \(storeName)!
What would you like to order?
""")
    for (index,(key, value)) in name.enumerated() {
        print("[\(index+1)] \(key) = \(value.formatted(.currency(code: "IDR")))")
    }
    print("-")
    print("""
[B]ack to Main Menu
Your menu choice?
""")
}

//getMenuLength: mengambil jumlah banyak menu pada toko tertentu, (arraymenu)
func getMenuLength(name: [String: Int])-> Int{
    return name.count
}

//buyMenu: menambahkan barang ke array cart
func buyMenu(shopName: String, menuName:String, price:Double, quantity:Double){
    let order: Cart = (shopName, menuName, price, quantity)
    cartArray.append(order)
}


