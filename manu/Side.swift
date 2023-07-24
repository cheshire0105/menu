import Foundation

class OrderSide{
    var name : String?
    var price : SidePrice?
    
    init(name: String? = "", price: SidePrice? = nil) {
        self.name = name
        self.price = price
    }
    
    func showInfo(){
        print("name : \(name), price : \(price)원")
    }
    
    func getNameAndPrice() -> (String, UInt){
        return (name!, UInt(price!.rawValue))
    }
}

enum SidePrice: Int {
    case Default = 0
    case Fries = 4000
    case CheeseFries = 4500
    case HotDog = 5000
}

class Side {
    var oderSide : OrderSide?
    
    func displayInfo() -> (String, UInt) {
        
        print("""

[Side MENU]
1. Fries | W 4.0
2. CheeseFries | W 4.5
3. HotDog | W 5.0
0. 뒤로가기

""")
        
        let price : (String, UInt) = ("Default", 0)
        
        let selectedStr = readLine()
        
        guard let selectedStr = selectedStr else {
            print("숫자로 입력해주세요.")
            oderSide = OrderSide(name: "", price: SidePrice.Default)
            return oderSide!.getNameAndPrice()
        }
        
        let selectedNum = Int(selectedStr)
        
        guard let selectedNum = selectedNum else {
            print("올바른 번호를 선택해주세요.")
            oderSide = OrderSide(name: "", price: SidePrice.Default)
            return oderSide!.getNameAndPrice()
        }
        
        switch selectedNum{
        case 1 :
            print("vanilla Icecream을 선택했습니다.")
            oderSide = OrderSide(name: "vanilla Icecream", price: SidePrice.Fries)
        case 2 :
            print("choco Icecream을 선택했습니다.")
            oderSide = OrderSide(name: "choco Icecream", price: SidePrice.CheeseFries)
        case 3 :
            print("strawberry Icecream을 선택했습니다.")
            oderSide = OrderSide(name: "strawberry Icecream", price: SidePrice.HotDog)
        default :
            print("올바른 번호를 선택해주세요.")
        }
        
        
        return oderSide!.getNameAndPrice()
    }
}
