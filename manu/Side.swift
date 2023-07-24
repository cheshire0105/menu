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
    case fries = 4800
    case cheeseFries = 5900
    case hotDog = 4900
    
}

class Side {
    var oderSide : OrderSide?
    
    func displayInfo() -> (String, UInt) {
        
        print("""

[Desserts MENU]
1. Fries | W 4.8
2. Cheese Fries | W 5.9
3. Hot dog | W 4.8
0. 뒤로가기

""")
        
        var price : (String, UInt) = ("Default", 0)
        
        var selectedStr = readLine()
        
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
            print("Fries을 선택했습니다.")
            oderSide = OrderSide(name: "Fries", price: SidePrice.fries)
        case 2 :
            print("Cheese Fries을 선택했습니다.")
            oderSide = OrderSide(name: "Cheese Fries", price: SidePrice.cheeseFries)
        case 3 :
            print("Hot dog을 선택했습니다.")
            oderSide = OrderSide(name: "Hot dog", price: SidePrice.hotDog)
        default :
            print("올바른 번호를 선택해주세요.")
        }
        
        
        return oderSide!.getNameAndPrice()
    }
}
