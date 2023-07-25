// Foundation 프레임워크를 import 합니다.
import Foundation

enum DessertPrice: Int {
    case Default = 0
    case vanilla = 5000
    case choco = 5500
    case strawberry = 6000
    case coffee = 6500
    case saltedCaramel = 7000
}

class SuperDessert : MenuProc{
    // 질문 return을 하는 이유?
    func displayInfo() {
        return
    }
    
    func SetCountOfItem(name: String, price: Int) {
        return
    }
    
    func deleteItem(index: Int) {
        return
    }
    
    func showPriceAll() -> Int {
        return 0
    }
    
    func showDessertInfo(){
        return
    }
    
}

class Dessert : SuperDessert {
    var dessertArray : Array<Dessert> = []
    var name : String?
    var cnt : Int?
    var price : Int?
    
    override func showDessertInfo(){
        for i in 0..<dessertArray.count{
            print("dessertArray[\(i)] -> 디저트 : \(dessertArray[i].name!), 가격 : \(dessertArray[i].price!), 개수 : \(dessertArray[i].cnt!)\n")
        }
    }
    
    override func SetCountOfItem(name: String, price: Int) {
        if let dessertPrice = DessertPrice(rawValue: price){
            switch dessertPrice{
            // 질문 break 거는 이유?
            case .Default :
                print("잘못된 가격입니다.")
                self.price = price
                break
            case .vanilla :
                self.price = price
                break
            case .choco :
                self.price = price
                break
            case .strawberry :
                self.price = price
                break
            case .coffee :
                self.price = price
                break
            case .saltedCaramel :
                self.price = price
                break
            }
        } else {
            print("가격을 잘못 설정하였습니다.")
            return
        }
        
        print("개수를 입력해주세요 : ")
        self.name = name
        let cnt = readLine()
        guard let cnt = cnt else {return}
        self.cnt = Int(cnt)
        // 질문 - 왜 self를 붙이는지??
    }
    
    override func deleteItem(index: Int) {
        if(index >= dessertArray.count){
            print("삭제할 메뉴를 다시 선택해주세요.")
        }else{
            dessertArray.remove(at: index)
            print("메뉴가 삭제되었습니다.")
        }
    }
    
    override func showPriceAll() -> Int {
        // 질문 amount 계산 이해안됨
        var amount = 0
        for i in 0..<dessertArray.count {
            amount = amount + (dessertArray[i].cnt! * dessertArray[i].price!)
        }
        return amount
    }
    
    override func displayInfo() {
        
        print("""

        [Desserts MENU]
        1. vanilla Icecream | W 5.0
        2. choco Icecream | W 5.5
        3. strawberry Icecream | W 6.0
        4. coffee Icecream | W 6.5
        5. saltedCaramel Icecream | W 7.0
        0. 뒤로가기

        """)
        
        let dessert = Dessert()
        
        let selectedStr = readLine()
        
        guard let selectedStr = selectedStr else {
            print("숫자로 입력해주세요.")
            return
        }
        let selectedNum = Int(selectedStr)
        guard let selectedNum = selectedNum else {
            print("올바른 번호를 선택해주세요.")
            return
        }
        
        switch selectedNum{
        case 0 :
            return
        case 1 :
            print("vanilla Icecream을 선택했습니다.")
            dessert.SetCountOfItem(name: "vanilla Icecream", price: 5000)
        case 2 :
            print("choco Icecream을 선택했습니다.")
            dessert.SetCountOfItem(name: "choco Icecream", price: 5500)
        case 3 :
            print("strawberry Icecream을 선택했습니다.")
            dessert.SetCountOfItem(name: "strawberry Icecream", price: 6000)
        case 4 :
            print("coffee Icecream을 선택했습니다.")
            dessert.SetCountOfItem(name: "coffee Icecream", price: 6500)
        case 5 :
            print("saltedCaramel Icecream을 선택했습니다.")
            dessert.SetCountOfItem(name: "saltedCaramel Icecream", price: 7000)
        default :
            dessert.SetCountOfItem(name: "", price: 0)
            // 질문
        }
        if let dessertName = dessert.name,
           let dessertCnt = dessert.cnt,
           let dessertPrice = dessert.price{
            dessertArray.append(dessert)
            
        }
        
    }
}
