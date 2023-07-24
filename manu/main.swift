//
// main.swift
// manu
//
// Created by cheshire on 2023/07/24.
//

import Foundation

class DisplayInfo {
    
    var MenuList : [AnyObject] = []
    
    func display() {
        MenuList = [Hamburger() , Dessert(), Beer()] // 버거, 맥주 , 아이스크림, 사이드 객체 추가
        while (true) {
            print("""

아래 메뉴판을 보시고 메뉴를 골라 입력해주세요.

""")
            
            print("""
[ SHAKESHACK MENU ]
1. Burgers | 앵거스 비프 통살을 다져만든 버거
2. Frozen Custard | 매장에서 신선하게 만드는 아이스크림
3. Side | 매장에서 직접 만드는 사이드
4. Beer | 뉴욕 브루클린 브루어리에서 양조한 맥주
5. Cart  | 장바구니 확인
0. 종료 | 프로그램 종료
""")
            
            guard let click = readLine(),
                  let num = Int(click) else {
                print("""

번호를 잘못 입력하셨습니다.

""")
                continue
            }
            switch num {
            case 1 :
                var rValue = (MenuList[0] as! Hamburger).displayInfo()
                let rValue2 = (MenuList[0] as! Hamburger).order?.getPriceWithName()
                print("price ->\(rValue2!.0), name ->\(rValue2!.1)")
            case 2 :
                var rValue = (MenuList[1] as! Dessert).displayInfo()
                let rValue2 = (MenuList[1] as! Dessert).oderDessert?.getNameAndPrice()
                print("price ->\(rValue2!.0), name ->\(rValue2!.1)")
            case 3 :
                var rValue = (MenuList[2] as! Beer).displayInfo()
            case 4 :
                print("1")
            case 5 :
                showCartInfo()
            case 0 :
                print("종료됩니다")
                exit(0)
            default:
                print("다시 선택해주세요")
                continue
            }
            
        }
    }
    
    func showCartInfo(){
        print("""
[ Cart MENU ]
1. 확인 | 앵거스 비프 통살을 다져만든 버거
2. 삭제 | 매장에서 신선하게 만드는 아이스크림
""")
        //Hamburger() , Dessert(), Beer()
        
        let selectedNum = readLine()
        guard let selectedNum = selectedNum else{return}
        switch selectedNum {
        case 1 :
           print(selectedNum)
           
        case 2 :
            print("a")
        default :
            print("aa")
            
            
            
            
            
        }
    }
    
    func showAllMenu(){
        for i in 0..<MenuList.count
        {
            
            
            
        }
        
        
    }
}


let displayInfo = DisplayInfo()
displayInfo.display()
