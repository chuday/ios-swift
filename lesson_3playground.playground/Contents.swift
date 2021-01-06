import UIKit



enum engineStart {
    case start, stop
}
enum allWindow {
    case open, close
}
enum trunkState {
    case full, empty

}

struct LittleCar {
    let nameCar: String
    let year: Int
    var volumeTrunk: Double
    var engine: engineStart {
        willSet {
           if newValue == .start {
                print("двигатель заведется")
            } else {
                print("двигатель заглушиться")
            }
        }
    }
    var window: allWindow {
        willSet {
            if newValue == .close {
                print("окна закроются")
            } else {
                print{"окна откроются"}
            }
        }
    }
    var trunk: trunkState
    
    mutating func allWindow() {
        self.window = .close
    }
}

struct BigCar {
    let namaCar: String
    let year: Int
    var volumeTrunk: Double
    var engine: engineStart {
        willSet {
            if newValue == .stop {
                print("двигатель заглушится")
            } else {
                print("двигатель заведется")
            }
        }
    }
    
    var window: allWindow {
        willSet {
            if newValue == .open {
                print("окна откроются")
            } else {
                print("окна закроются")
            }
        }
    }
    var trunk: Double {
        didSet {
            let trunkValue = (volumeTrunk - oldValue)
            print("Остаток свободного места \(trunkValue)")
        }
        
    }
    
    mutating func engineStart() {
        self.engine = .start
    }
}

var carOne = LittleCar(nameCar: "BMW", year: 1990, volumeTrunk: 500, engine: .stop, window: .open, trunk: .empty)
var carTwo = BigCar(namaCar: "Kamaz", year: 2000, volumeTrunk: 1000, engine: .start, window: .open, trunk: 100)


carOne.engine
carOne.nameCar
carOne.trunk
carOne.volumeTrunk
carOne.window
carOne.year
carOne.allWindow()

carTwo.engine
carTwo.namaCar
carTwo.trunk
carTwo.volumeTrunk
carTwo.window
carTwo.year
carTwo.engineStart()


