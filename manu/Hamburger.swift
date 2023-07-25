import Foundation

enum HamburgurPrice: Int {
    case Default = 0
    case ShackBurger = 6900
    case SmokeShack = 8900
    case ShroomBurger = 9400
    case Cheeseburger = 7000
    case Hamburger = 5400
}

class superBuger : MenuProc{
    
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
    
    func showBugerInfo() {return}
}



// Hamburger 클래스는 햄버거 주문을 처리합니다.
class Hamburger : superBuger{
    // 주문 객체를 나타냅니다.
    var bugerArray : Array<Hamburger>  = []
    var name : String?
    var cnt : Int?
    var price : Int?
    
    
    override func showBugerInfo(){
        for i in 0..<bugerArray.count{
            print("BugerArray[\(i)] -> 햄버거이름: \(bugerArray[i].name!),  가격 :\(bugerArray[i].price!),  갯수 : \(bugerArray[i].cnt!)\n")
        }
    }
    
    override func SetCountOfItem(name: String, price: Int)  {
        if let bugerPrice = HamburgurPrice(rawValue: price)
        {
            switch bugerPrice{
            case .Default:
                print("잘못된 가격입니다.")
                self.price = price
                break
            case .ShackBurger:
                self.price = price
                break
            case .SmokeShack:
                self.price = price
                break
            case .ShroomBurger:
                self.price = price
                break
            case .Cheeseburger:
                self.price = price
            case .Hamburger:
                self.price = price
                break
            }
        }else{
            print("가격을 잘못설정하셨습니다.")
            return
        }
        
        print("갯수를 입력해주세요.")
        self.name = name
        let cnt = readLine()
        guard let cnt = cnt else{return  }
        self.cnt = Int(cnt)
    }
    
    override func deleteItem(index: Int){
        if(index >= bugerArray.count){
            print("인덱스가 잘못되었습니다.")
            
        }else{
            print("아이템이 성공적으로 삭제되었습니다.")
            bugerArray.remove(at: index)
            
        }
    }
    override func showPriceAll() -> Int{
        var amount = 0
        for i in 0..<bugerArray.count{
            amount = amount + bugerArray[i].cnt! + bugerArray[i].price!
        }
        return amount
    }
    
    
    override  func displayInfo() {
        print("""
                [ Buger MENU ]
                1. ShackBuger | W 6.9
                2. SmokeShack | W 8.9
                3. ShroomBuger | W 9.4
                4. CheeseBuger | W 7.0
                5. Hambuger | W 5.4
                0. 뒤로가기 | 뒤로가기
                """)
        
        
        let buger = Hamburger()
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
            print("ShackBuger를 선택하셨습니다")
            buger.SetCountOfItem(name: "ShackBuger", price : 6900)
        case  2 :
            print("SmokeBuger를 선택하셨습니다")
            buger.SetCountOfItem(name: "SmokeBuger", price : 8900)
            
        case  3 :
            print("ShroomBuger를 선택하셨습니다")
            buger.SetCountOfItem(name: "ShroomBuger", price : 9400)
            
        case  4 :
            print("Cheesebuger를 선택하셨습니다")
            buger.SetCountOfItem(name: "Cheesebuger", price : 7000)
        case 5 :
            print("Hambuger를 선택하셨습니다")
            buger.SetCountOfItem(name: "Hambuger", price : 5400)
            
            
        default :
            buger.SetCountOfItem(name: "", price : 0)
        }
        if let bugerName = buger.name,let beercnt = buger.cnt,let bugerPrice = buger.price{
            bugerArray.append(buger)
        }
    }
}

    
    
 
