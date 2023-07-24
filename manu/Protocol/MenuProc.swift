//
//  MenuProc.swift
//  manu
//
//  Created by 박유경 on 2023/07/24.
//

import Foundation


/*@objc*/ protocol MenuProc{

    func displayInfo() -> UInt //디스플레이 함수 구현해야할것
    
//    @objc optional func optionalMethod(parameter: Int) -> String // 이함수는 선택적으로 채용하여 사용해도 되고 안해도 됩니다.
   
}



//ex

class Water : MenuProc{
    
   //이 함수에서 구현하시면 됩니다.
    func displayInfo() -> UInt{
        return 0
    }

//    선택적 구현 함수
//    func optionalMethod(parameter : Int) ->String{
//
//        return ""
//    }
    
}
