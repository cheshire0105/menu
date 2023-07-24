// Foundation 프레임워크를 import 합니다.
import Foundation

class OrderBeer{
    var name : String?
    var price : BeerPrice?
    init(name: String? = "", price : BeerPrice? = BeerPrice.Default) {
        self.name = name
        self.price = price
    }
    func showInfo(){
        print("name -> \(name),price -> \(price)")
    }
    func getPriceWithName() ->(UInt, String){
        return (UInt(price!.rawValue), name!)
    }
}

enum BeerPrice: Int {
    case Default = 0
    case Terra = 4000
    case Cass = 5000
    case cloud = 6000
    case Heineken = 7000
}

class Beer {
    var order : OrderBeer?
    
  
    func displayInfo() -> (UInt, String)  {
        print("""
        [ Beer MENU ]
        1. Terra | W 4.0
        2. Cass | W 5.0
        3. Cloud | W 6.0
        4. Heineken | W 7.0
        0. 뒤로가기 | 뒤로가기
        }
        """)

        
        var selectedStr = readLine()
        guard let selectedStr = selectedStr else{
            print("숫자로 선택해주세요.")
            order = OrderBeer(name :"", price : BeerPrice.Default)
            return order!.getPriceWithName()
            }
        let slectedNum = Int(selectedStr)
        guard let slectedNum = slectedNum else{
            print("올바른 번호를 선택해주세요")
            order = OrderBeer(name :"", price : BeerPrice.Default)
            return order!.getPriceWithName()
           }
        switch slectedNum{
        case  1 :
            print("Terra를 선택하셨습니다")
            order = OrderBeer(name :"Terra", price : BeerPrice.Terra)
            
        case  2 :
            print("Cass를 선택하셨습니다")
            order = OrderBeer(name :"Cass", price : BeerPrice.Cass)
            
        case  3 :
            print("Cloud를 선택하셨습니다")
            order = OrderBeer(name :"Cloud", price : BeerPrice.cloud)
            
        case  4 :
            print("Heineken를 선택하셨습니다")
            order = OrderBeer(name :"Heineken", price : BeerPrice.Heineken)
            
        default :
            print("올바른 번호로 선택해주세요.")
        }
        return order!.getPriceWithName()
    }
}
