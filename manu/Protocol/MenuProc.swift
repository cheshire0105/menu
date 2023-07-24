//
//  MenuProc.swift
//  manu
//
//  Created by 박유경 on 2023/07/24.
//

import Foundation


protocol MenuProc{

    func displayInfo() -> (UInt, String)//디스플레이 함수 구현해야할것
    func DeleteItem(index : Int) -> AnyObject
    func showCountOf() -> Int
}



