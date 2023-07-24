import Foundation

class OrderDessert{
    var name : String?
    var price : DessertPrice?
    
    init(name: String? = "", price: DessertPrice? = nil) {
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

enum DessertPrice: Int {
    case Default = 0
    case vanilla = 5000
    case choco = 5500
    case strawberry = 6000
    case coffee = 6500
    case saltedCaramel = 7000
}

class Dessert {
    var oderDessert : OrderDessert?
    
    func displayInfo() -> (String, UInt) {
        
        print("""

[Desserts MENU]
1. vanilla Icecream | W 5.0
2. choco Icecream | W 5.5
3. strawberry Icecream | W 6.0
4. coffee Icecream | W 6.5
5. saltedCaramel Icecream | W 7.0
0. 뒤로가기

""")
        
        let price : (String, UInt) = ("Default", 0)
        
        let selectedStr = readLine()
        
        guard let selectedStr = selectedStr else {
            print("숫자로 입력해주세요.")
            oderDessert = OrderDessert(name: "", price: DessertPrice.Default)
            return oderDessert!.getNameAndPrice()
        }
        
        let selectedNum = Int(selectedStr)
        
        guard let selectedNum = selectedNum else {
            print("올바른 번호를 선택해주세요.")
            oderDessert = OrderDessert(name: "", price: DessertPrice.Default)
            return oderDessert!.getNameAndPrice()
        }
        
        switch selectedNum{
        case 1 :
            print("vanilla Icecream을 선택했습니다.")
            oderDessert = OrderDessert(name: "vanilla Icecream", price: DessertPrice.vanilla)
        case 2 :
            print("choco Icecream을 선택했습니다.")
            oderDessert = OrderDessert(name: "choco Icecream", price: DessertPrice.choco)
        case 3 :
            print("strawberry Icecream을 선택했습니다.")
            oderDessert = OrderDessert(name: "strawberry Icecream", price: DessertPrice.strawberry)
        case 4 :
            print("coffee Icecream을 선택했습니다.")
            oderDessert = OrderDessert(name: "coffee Icecream", price: DessertPrice.coffee)
        case 5 :
            print("saltedCaramel Icecream을 선택했습니다.")
            oderDessert = OrderDessert(name: "saltedCaramel Icecream", price: DessertPrice.saltedCaramel)
        default :
            print("올바른 번호를 선택해주세요.")
        }
        
        
        return oderDessert!.getNameAndPrice()
    }
}
