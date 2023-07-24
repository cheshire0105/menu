//
//  MenuProc.swift
//  manu
//
//  Created by 박유경 on 2023/07/24.
//

import Foundation


protocol MenuProc{
    func displayInfo()
    func SetCountOfItem(name : String, price : Int) 
    func deleteItem(index : Int) // 배열로 저장된 메뉴 인덱스를 삭제하는 함수
    func showPriceAll() -> Int // 메뉴 객체에 저장된 배열의 메뉴의 가격을 반환하는함수(메뉴 * 가격)
}



