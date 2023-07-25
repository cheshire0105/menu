//
// main.swift
// manu
//
// Created by cheshire on 2023/07/24.
//

import Foundation

class DisplayInfo {
    
    var MenuList : [AnyObject] = []
    
    func printMenu(){
        
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
    }
    
    func printCartMenu(){
        print("""
        [ Cart MENU ]
        0. 뒤로가기 | 전메뉴로 돌아갑니다.
        1. 확인 | 장부구니 메뉴를 확인합니다.
        2. 삭제 | 장바구니에서 메뉴를 삭제합니다.
        
        """)
    }
    
    func display() {
        MenuList = [Hamburger() , Dessert(), Beer(), Side()] // 버거, 디저트, 사이드 , 맥주
        while (true) {
            
            printMenu()
            
            guard let click = readLine(),
                  let num = Int(click) else {
                print("번호를 입력하세요.\n")
                continue
            }
            switch num {
                
            case 1 :
                (MenuList[0] as! Hamburger).displayInfo()
                (MenuList[0] as! Hamburger).showBugerInfo()
            case 2 :
                (MenuList[1] as! Dessert).displayInfo()
                (MenuList[1] as! Dessert).showDessertInfo()
            case 3 :
                (MenuList[3] as! Side).displayInfo()
                (MenuList[3] as! Side).showSideInfo()
            case 4 :
                (MenuList[2] as! Beer).displayInfo()
                (MenuList[2] as! Beer).showBeerInfo()
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
    
    
    
    //모든 정보를 나타내는 함수
    func showAllInfo(){
        //추가 구현  햄버거
        let Hamburger = MenuList[0] as! Hamburger
        Hamburger.showBugerInfo()
        
        let Desert = MenuList[1] as! Dessert
        Desert.showDessertInfo()
        
        let beerInfo = MenuList[2] as! Beer
        beerInfo.showBeerInfo()
        
        let sideInfo = MenuList[3] as! Side
        sideInfo.showSideInfo()
    }
    
    //카트정보
    func showCartInfo(){
        printCartMenu()
        let selectedNum = readLine()
        guard let selectedNum = selectedNum else{return}
        guard let intNum = Int(selectedNum) else {return}
        switch intNum {
        case 0:
            display()
        case 1 :
            showAllInfo()
           
        case 2 :
            showDeleteInfo()

        default :
            print("올바르지 않은 번호입니다.")
        }
    }

    
    func showDeleteInfo(){
       print("""
        [ Delete MENU ]
        1. Burgers | 앵거스 비프 통살을 다져만든 버거
        2. Frozen Custard | 매장에서 신선하게 만드는 아이스크림
        3. Side | 매장에서 직접 만드는 사이드
        4. Beer | 뉴욕 브루클린 브루어리에서 양조한 맥주
        """)

        guard let click = readLine(),
        let num = Int(click) else {
            return display()
        }
        
        switch num{
        case 1 :
            let bugertInfo = MenuList[0] as! Hamburger
            if bugertInfo.bugerArray.count == 0 {
                print("선택 된 항목이 없습니다.")
            } else {
                bugertInfo.showBugerInfo()
                print("지우고자 하는 메뉴 번호를 입력해주세요.")
                let deleteStr = readLine()
                guard let deleteStr = deleteStr else {return}
                guard let deleteNum = Int(deleteStr) else {return}
                bugertInfo.deleteItem(index: deleteNum)
                print("삭제되었습니다. 현재 디저트 배열의 값은 다음과 같습니다.")
            }
            bugertInfo.showBugerInfo()
            
        case 2 :
            let dessertInfo = MenuList[1] as! Dessert
            if dessertInfo.dessertArray.count == 0 {
                print("선택 된 항목이 없습니다.")
            } else {
                dessertInfo.showDessertInfo()
                print("지우고자 하는 메뉴 번호를 입력해주세요.")
                let deleteStr = readLine()
                guard let deleteStr = deleteStr else {return}
                guard let deleteNum = Int(deleteStr) else {return}
                dessertInfo.deleteItem(index: deleteNum)
                print("삭제되었습니다. 현재 디저트 배열의 값은 다음과 같습니다.")
            }
            dessertInfo.showDessertInfo()
            
        case 3 :
            let sideInfo = MenuList[3] as! Side
            if sideInfo.sideArray.count == 0
            {
                print("선택 된 항목이 없습니다.")
            }else{
                sideInfo.showSideInfo()
                print("지우고자 하는 인덱스를 선택해주세요.")
                let deleteNum = readLine()
                guard let deleteNum = deleteNum else{return}
                guard let deleteNum = Int(deleteNum) else {return}
                sideInfo.deleteItem(index: deleteNum)
                print("현재 사이드 배열의 값은 다음과 같습니다.")
            }
            sideInfo.showSideInfo()
            //print("사이드쪽 구현")
            //let Side = MenuList[2] as! Side
            //Side.showBeerInfo()
        case 4 :
            let beerInfo = MenuList[2] as! Beer
            if beerInfo.beerArray.count == 0
            {
                print("선택 된 항목이 없습니다.")
            }else{
                beerInfo.showBeerInfo()
                print("지우고자 하는 인덱스를 선택해주세요.")
                let deleteNum = readLine()
                guard let deleteNum = deleteNum else{return}
                guard let deleteNum = Int(deleteNum) else {return}
                beerInfo.deleteItem(index: deleteNum)
                print("현재 맥주 배열의 값은 다음과 같습니다.")
            }
            beerInfo.showBeerInfo()
            
        default :
            print("잘못된 번호 선택")
        }
    }
}


let displayInfo = DisplayInfo()
displayInfo.display()
