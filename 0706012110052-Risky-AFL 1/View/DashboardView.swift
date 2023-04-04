    //
    //  DashboardView.swift
    //  0706012110052-Risky-AFL 1
    //
    //  Created by MacBook Pro on 05/04/23.
    //

    import Foundation
    var userInput :String = ""
    func MainView(){
        repeat{
            print("Welcome to UC-Walk Cafetaria 👨🏻‍🍳👩🏻‍🍳\n")
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
        Your cafetaria choice?
        """ ,terminator: "")
            userInput = readLine()!
            switch userInput.lowercased().trimmingCharacters(in: .whitespaces) {
            case "1"  :
                print(buyScreen(storeName:tukuShop))
            case "2" :
                print(buyScreen(storeName:gotriShop))
            case "3" :
                print(buyScreen(storeName:madamShop))
            case "4" :
                print(buyScreen(storeName:kopteShop))
            case "5" :
                print(buyScreen(storeName:ngikanShop))
            case "s":
                print(" masuk ke cart bos")
            case "q":
                print("Thankyou")
                exit(0)
            default:
                print("Invalid input. Please try again.\n")
                
            }
        }while userInput.lowercased().trimmingCharacters(in: .whitespaces) != "q"
    }
    
    func buyScreen(storeName:Shop){
        print()
        repeat{
            print("""
        Hi,welcome back to \(storeName.name)!
        What would you like to order?
        """)
            //        Function Print menu
            storeName.printMenu()
            print("-")
            print("""
        [B]ack to Main Menu
        Your menu choice?
        """,terminator: "")
            userInput = readLine()!
            if let inputNumber = Int(userInput), inputNumber > 0, inputNumber <=  storeName.menu.count{
                print()
                let index = Int(inputNumber-1)
                let foodName = storeName.menu[index].name
                let foodPrice = storeName.menu[index].price
                
                print("\(foodName) @ \(foodPrice)")
                print("How many \(foodName) do you want to buy?",terminator: "")
                userInput = readLine()!
                if let quantity = Int(userInput.trimmingCharacters(in: .whitespaces)), quantity > 0{
                    //                    TES
                    let item = Item(id:1,name: "Nasi Kuning", price: 20000, shopName: "Tuku Tuku", quantity: 1)
                    let item1 = Item(id:1,name: "Nasi Kuning", price: 5000, shopName: "Tuku Tuku", quantity: 1)
                    let item2 = Item(id:20,name: "Ngikan Matah", price: 25000, shopName: "Ngikan", quantity: 1)
                    let cart = Cart()
                    cart.addItem(item)
                    cart.addItem(item1)
                    cart.addItem(item2)
                    print("TOTAL\(cart.getCartTotalPrice())")
                    print(cart.getCartList())
                    //                    PENUTUP TES
                    print("Thank you for ordering.")
                }else{
                    print("Invalid input. Please try again.")
                }
                print()
            }else{
                print("Invalid input. Please try again.")
                print()
            }
        }while userInput.lowercased().trimmingCharacters(in: .whitespaces) != "b"
    }

