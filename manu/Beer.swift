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

    
    init(){
        
    }
    
    var beerArray : Array<Beer>  = []
    var name : String?
    var cnt : Int?
    var price : Int?
    init(name : String, price : Int, cnt : Int) {
        self.name = name
        self.cnt = cnt
    }
    
    func showCountOf(name : String, price : Int){
        print("갯수를 입력해주세요.")
        self.name = name
        self.price = price
        var cnt = readLine()
        guard let cnt = cnt else{return }
        self.cnt = Int(cnt)
           
    }

    
    func displayInfo()  {
        print("""
        [ Beer MENU ]
        1. Terra | W 4.0
        2. Cass | W 5.0
        3. Cloud | W 6.0
        4. Heineken | W 7.0
        0. 뒤로가기 | 뒤로가기
        }
        """)

        var obj = Beer()
        var selectedStr = readLine()
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
            
            obj.showCountOf(name: "", price : 0)
        
        case  1 :
            print("Terra를 선택하셨습니다")
           
            obj.showCountOf(name: "Terra", price : 4000)
        
            
        case  2 :
            print("Cass를 선택하셨습니다")
            obj.showCountOf(name: "Cass", price : 5000)
            
        case  3 :
            print("Cloud를 선택하셨습니다")
            obj.showCountOf(name: "Cloud", price : 6000)
            
        case  4 :
            print("Heineken를 선택하셨습니다")
            obj.showCountOf(name: "Heineken", price : 7000)
            
        default :
            obj.showCountOf(name: "", price : 0)
        }
                
        beerArray.append(obj)
        //배열객체 프린트
        for i in 0..<beerArray.count{
            print("beerArra[\(i)] -> name: \(beerArray[i].name!)")
            print("beerArra[\(i)] -> price :\(beerArray[i].price!)")
            print("beerArra[\(i)] -> cnt : \(beerArray[i].cnt!)")
        }
       
    }
}
