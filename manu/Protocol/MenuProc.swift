//
//  MenuProc.swift
//  manu
//
//  Created by 박유경 on 2023/07/24.
//

import Foundation


protocol MenuProc{

    func displayInfo()
    func showCountOf() -> Int
    func deleteItem(index : Int) -> [AnyObject]
}



