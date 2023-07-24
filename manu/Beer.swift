// Foundation 프레임워크를 import 합니다.
import Foundation


enum BeerPrice: Int {
    case Default = 0
    case Terra = 4000
    case Cass = 5000
    case cloud = 6000
    case Heineken = 7000
}

class Beer : MenuProc {
    var beerArray : Array<Beer>  = []
    var name : String?
    var cnt : Int?
    var price : Int?
    
    func showBeerInfo(){
        for i in 0..<beerArray.count{
            print("beerArra[\(i)] -> 맥주이름: \(beerArray[i].name!),  가격 :\(beerArray[i].price!),  갯수 : \(beerArray[i].cnt!)\n")
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
        if(index >= beerArray.count){
            print("인덱스가 잘못되었습니다.")
            
        }else{
            print("아이템이 성공적으로 삭제되었습니다.")
            beerArray.remove(at: index)
            
        }
    }
    func showPriceAll() -> Int{
        var amount = 0
        for i in 0..<beerArray.count{
            amount = amount + beerArray[i].cnt! + beerArray[i].price!
        }
        return amount
    }
    
    
    func displayInfo() {
        print("""
                [ Beer MENU ]
                1. Terra | W 4.0
                2. Cass | W 5.0
                3. Cloud | W 6.0
                4. Heineken | W 7.0
                0. 뒤로가기 | 뒤로가기
                """)
    
        
        let beer = Beer()
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
            beer.SetCountOfItem(name: "Terra", price : 4000)
        case  2 :
            print("Cass를 선택하셨습니다")
            beer.SetCountOfItem(name: "Cass", price : 5000)
            
        case  3 :
            print("Cloud를 선택하셨습니다")
            beer.SetCountOfItem(name: "Cloud", price : 6000)
            
        case  4 :
            print("Heineken를 선택하셨습니다")
            beer.SetCountOfItem(name: "Heineken", price : 7000)
            
        default :
            beer.SetCountOfItem(name: "", price : 0)
        }
        beerArray.append(beer)
    }
}
