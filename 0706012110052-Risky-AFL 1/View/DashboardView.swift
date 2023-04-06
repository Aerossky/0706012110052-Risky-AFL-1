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
                buyScreen(storeName:tukuShop)
            case "2" :
                buyScreen(storeName:gotriShop)
            case "3" :
                buyScreen(storeName:madamShop)
            case "4" :
                buyScreen(storeName:kopteShop)
            case "5" :
                buyScreen(storeName:ngikanShop)
            case "s":
                repeat{
                    if  cart.getCartListFill() == true{
                        print()
                        print("Your cart is empty.")
                        userInput = "b"
                        print()
                    }else{
                        cart.getCartList()
                        print("")
                        print("Press [B] to go back")
                        print("Press [P] to pay / checkout")
                        print("Your choice?" ,terminator: "")
                        userInput = readLine()!
                        switch userInput.lowercased().trimmingCharacters(in: .whitespaces) {
                        case "b":
                            print("Back")
                        case "p":
                            let totalPrice = cart.getCartTotalPrice()
                         
                            repeat{
                                print("Your total order: \(totalPrice.formatted(.currency(code: "IDR")))")
                                print("Enter the amount of your money:",terminator: "")
                                userInput = readLine()!
                                if let value = Int(userInput.trimmingCharacters(in: .whitespaces)), value > 0 && value >= totalPrice {
                                    print("You pay:\(value.formatted(.currency(code: "IDR"))) Change:\(cart.checkoutPaymentCart(money: Int(userInput) ?? 0).formatted(.currency(code: "IDR")))")
                                    print("\n Enjoy your meals \n")
                                    repeat{
                                        print("Press [return] to go back to main screen")
                                        userInput = readLine()!
                                        switch userInput.lowercased().trimmingCharacters(in: .whitespaces) {
                                        case ""  :
                                            cart.carts.removeAll()
                                            print("Thankyou")
                                            MainView()
                                        default:
                                            print("Invalid input. Please try again.")
                                        }
                                    }while userInput.lowercased().trimmingCharacters(in: .whitespaces) != ""
                                }else if userInput == "0" {
                                    print("")
                                    print("Your total order : \(totalPrice)")
                                    print("Payment can't be zero.")
                                } else {
                                    print("")
                                    print("Your total order : \(totalPrice)")
                                    print("Please enter a valid amount",terminator: "")
                                    print("")
                               }
                            }while userInput.lowercased().trimmingCharacters(in: .whitespaces) != "return"
                        default:
                            print()
                            print("Invalid input. Please try again.")
                            print()
                        }
                    }
                    
                }while userInput.lowercased().trimmingCharacters(in: .whitespaces) != "b"
            case "q":
                print("Thankyou")
                exit(0)
            default:
                print("Invalid input. Please try again.\n")
                
            }
        }while userInput.lowercased().trimmingCharacters(in: .whitespaces) != "q"
    }
    
    func buyScreen(storeName:Shop){
        repeat{
            print("")
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
            if let inputNumber = Int(userInput.trimmingCharacters(in: .whitespaces)), inputNumber > 0, inputNumber <=  storeName.menu.count{
                print()
                let index = Int(inputNumber-1)
                let foodName = storeName.menu[index].name
                let foodPrice = storeName.menu[index].price
                let foodShopName = storeName.menu[index].shopName
                
                print("\(foodName) @ \(foodPrice.formatted(.currency(code: "IDR")))")
                print("How many \(foodName) do you want to buy?",terminator: "")
                userInput = readLine()!
                if let quantity = Int(userInput.trimmingCharacters(in: .whitespaces)), quantity > 0{
                    cart.addItemCart(Item(name: foodName, price: foodPrice, shopName: foodShopName, quantity: quantity))
                    print("Thank you for ordering.")
                    print()
                }else{
                    print("Invalid input. Please try again.")
                    print()
                }
            }else if(userInput == "b"){
               print("Back..")
            }else{
                print("Invalid input. Please try again.")
            }
        }while userInput.lowercased().trimmingCharacters(in: .whitespaces) != "b"
    }

