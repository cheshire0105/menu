// Foundation 프레임워크를 import 합니다.
import Foundation

// Order 클래스는 햄버거 주문을 나타냅니다.
class Order{
    // 주문한 햄버거의 이름을 나타냅니다.
    var name : String?
    // 주문한 햄버거의 가격을 나타냅니다.
    var price : HamburgurPrice?
    // 생성자 함수입니다. 주문을 생성하면서 햄버거의 이름과 가격을 설정합니다.
    init(name: String? = "", price : HamburgurPrice? = HamburgurPrice.Default) {
        self.name = name
        self.price = price
    }
    // 주문 정보를 보여주는 함수입니다.
    func showInfo(){
        // 주문한 햄버거의 이름과 가격을 출력합니다.
        print("name -> \(name),price -> \(price)")
    }
    // 주문한 햄버거의 가격과 이름을 반환하는 함수입니다.
    func getPriceWithName() ->(UInt, String){
        // 주문한 햄버거의 가격과 이름을 반환합니다.
        return (UInt(price!.rawValue), name!)
    }
}

// HamburgurPrice 열거형은 햄버거의 가격을 나타냅니다.
enum HamburgurPrice: Int {
    case Default = 0
    case ShackBurger = 6900
    case SmokeShack = 8900
    case ShroomBurger = 9400
    case Cheeseburger = 7000
    case Hamburger = 5400
}

// Hamburger 클래스는 햄버거 주문을 처리합니다.
class Hamburger {
    // 주문 객체를 나타냅니다.
    var order : Order?
    
    // 사용자에게 메뉴를 보여주고, 사용자의 선택에 따라 주문을 생성하고, 선택한 햄버거의 가격과 이름을 반환하는 함수입니다.
    func displayInfo() -> (UInt, String)  {
        // 햄버거 메뉴를 출력합니다.
        print("""
        [ Burgers MENU ]
        1. ShackBurger | W 6.9 | 토마토, 양상추, 쉑소스가 토핑된 치즈버거
        2. SmokeShack | W 8.9 | 베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거
        3. Shroom Burger | W 9.4 | 몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거
        4. Cheeseburger | W 6.9 | 포테이토 번과 비프패티, 치즈가 토핑된 치즈버거
        5. Hamburger | W 5.4 | 비프패티를 기반으로 야채가 들어간 기본버거
        0. 뒤로가기 | 뒤로가기
        }
        """)
        // 사용자의 선택을 입력받습니다.
        var selectedStr = readLine()
        // 선택이 유효한지 확인합니다.
        guard let selectedStr = selectedStr else{
            print("숫자로 선택해주세요.")
            order = Order(name :"", price : HamburgurPrice.Default)
            return order!.getPriceWithName()
            }
        let slectedNum = Int(selectedStr)
        guard let slectedNum = slectedNum else{
            print("올바른 번호를 선택해주세요")
            order = Order(name :"", price : HamburgurPrice.Default)
            return order!.getPriceWithName()
           }
        // 사용자의 선택에 따라 주문을 생성하고 가격을 설정합니다.
        switch slectedNum{
        case  1 :
            print("ShackBurger를 선택하셨습니다")
            order = Order(name :"ShackBurger", price : HamburgurPrice.ShackBurger)
            
        case  2 :
            print("SmokeShack를 선택하셨습니다")
            order = Order(name :"SmokeShack", price : HamburgurPrice.SmokeShack)
            
        case  3 :
            print("Shroom를 선택하셨습니다")
            order = Order(name :"ShroomBurger", price : HamburgurPrice.ShroomBurger)
            
        case  4 :
            print("Cheeseburger를 선택하셨습니다")
            order = Order(name :"Cheeseburger", price : HamburgurPrice.Cheeseburger)
            
        case  5 :
            print("Hamburger를 선택하셨습니다")
            order = Order(name :"Hamburger", price : HamburgurPrice.Hamburger)
            
        default :
            print("올바른 번호로 선택해주세요.")
        }
        // 선택한 햄버거의 가격과 이름을 반환합니다.
        return order!.getPriceWithName()
    }
}
