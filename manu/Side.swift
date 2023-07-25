// Foundation 프레임워크를 import 합니다.
import Foundation


enum SidePrice: Int {
    case Default = 0
    case Fries = 4000
    case CheeseFries = 5000
    case HotDog = 6000
}

class Side : MenuProc {
    var sideArray : Array<Side>  = []
    var name : String?
    var cnt : Int?
    var price : Int?
    
    func showSideInfo(){
        for i in 0..<sideArray.count{
            print("sideArray[\(i)] -> 사이드이름: \(sideArray[i].name!),  가격 :\(sideArray[i].price!),  갯수 : \(sideArray[i].cnt!)\n")
        }
    }
    
    func SetCountOfItem(name: String, price: Int)  {
        print("갯수를 입력해주세요.")
        self.name = name
        self.price = price
        let cnt = readLine()
        guard let cnt = cnt else{return  }
        self.cnt = Int(cnt)
    }
    
    func deleteItem(index: Int){
        if(index >= sideArray.count){
            print("인덱스가 잘못되었습니다.")
            
        }else{
            print("아이템이 성공적으로 삭제되었습니다.")
            sideArray.remove(at: index)
            
        }
    }
    func showPriceAll() -> Int{
        var amount = 0
        for i in 0..<sideArray.count{
            amount = amount + sideArray[i].cnt! + sideArray[i].price!
        }
        return amount
    }
    
    
    func displayInfo() {
        print("""
                [ Side MENU ]
                1. Fries | W 4.0
                2. Cheese Fries | W 5.0
                3. Hotdog | W 6.0
                0. 뒤로가기 | 뒤로가기
                """)
    
        
        let side = Side()
        let selectedStr = readLine()
        guard let selectedStr = selectedStr else{
            print("숫자로 선택해주세요.")
            return
        }
        let slectedNum = Int(selectedStr)
        guard let slectedNum = slectedNum else{
            print("올바른 번호를 선택해주세요")
            return
        }
        
        switch slectedNum{
        case 0 :
             return
        case  1 :
            print("Terra를 선택하셨습니다")
            side.SetCountOfItem(name: "Fries", price : 4000)
        case  2 :
            print("Cass를 선택하셨습니다")
            side.SetCountOfItem(name: "CheeseFries", price : 5000)
            
        case  3 :
            print("Cloud를 선택하셨습니다")
            side.SetCountOfItem(name: "Hotdog", price : 6000)

        default :
            side.SetCountOfItem(name: "", price : 0)
        }
        sideArray.append(side)
    }
}
