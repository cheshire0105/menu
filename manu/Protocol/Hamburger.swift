//
//  Hamburger.swift
//  manu
//
//  Created by 박유경 on 2023/07/24.
//

import Foundation

class Order{
    var name : String?
    var price : HamburgurPrice?
    init(name: String? = "", hamburgurprice : HamburgurPrice = HamburgurPrice.Default ) {
        self.name = name
        self.price = hamburgurprice
    }
    func showInfo(){
        
        
    }
    
    
}

enum HamburgurPrice: Int {
    case Default = 0
    case ShackBurger = 6900
    case SmokeShack = 8900
    case ShroomBurger = 9400
    case Cheeseburger = 5400
}

class Hamburger {
//    var name : String?
//    var price : UInt?
//
//    init(name: String? = "", price: UInt? = 0) {
//        self.name = name
//        self.price = price
//    }
    var order : Order?
    
    func displayInfo() -> (UInt, String)  {
print("""
[ Burgers MENU ]
1. ShackBurger | W 6.9 | 토마토, 양상추, 쉑소스가 토핑된 치즈버거
2. SmokeShack | W 8.9 | 베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거
3. Shroom Burger | W 9.4 | 몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거
4. Cheeseburger | W 6.9 | 포테이토 번과 비프패티, 치즈가 토핑된 치즈버거
5. Hamburger | W 5.4 | 비프패티를 기반으로 야채가 들어간 기본버거
0. 뒤로가기 | 뒤로가기
}
""")
        
        
        var selectedStr = readLine()
        guard let selectedStr = selectedStr else{
            print("숫자로 선택해주세요.")
            //return
            }
        let slectedNum = Int(selectedStr)
        guard let slectedNum = slectedNum else{
            print("올바른 번호를 선택해주세요")
           }
        switch slectedNum{
        case  1 :
            print("ShackBurger를 선택하셨습니다")
            Order = Order(name :"ShackBurger" , hamburgurprice: HamburgurPrice.ShackBurger)
            
        case  2 :
            print("SmokeShack를 선택하셨습니다")
           // price = 8900
            
        case  3 :
            print("Shroom를 선택하셨습니다")
           // price = 9400
            
        case  4 :
            print("Cheeseburger를 선택하셨습니다")
           // price = 6900
            
        case  5 :
            print("Hamburger를 선택하셨습니다")
            //price = 5400
            
    
        default :
            print("올바른 번호로 선택해주세요.")
           // price = 0
            
        }
        //return price!
        return (price,"Hamburger")
    }
    
}
